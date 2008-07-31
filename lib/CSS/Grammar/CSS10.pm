package CSS::Grammar::CSS10;

use strict;
use warnings;
use Data::Dumper;

use base 'CSS::Grammar';

#
# http://www.w3.org/TR/REC-CSS1-961217.html#appendix-b
#

sub init {
	my ($self) = @_;

	my %rx;

	$self->{case_insensitive} = 1;


	$rx{unicode}	= '(\\[0-9a-f]{1,4})';
	$rx{ascii}	= '[\x20-\x7e]';
	$rx{latin1}	= '[\xa1-\xff]';	
	$rx{escape}	= "($rx{unicode}|\\\\$rx{ascii}|\\\\$rx{latin1})";
	$rx{stringchar}	= "($rx{escape}|$rx{latin1}|[ !#$%&(-~])";
	$rx{nmstrt}	= "([a-z]|$rx{latin1}|$rx{escape})";
	$rx{nmchar}	= "([-a-z0-9]|$rx{latin1}|$rx{escape})";
	$rx{ident}	= "($rx{nmstrt}$rx{nmchar}*)";
	$rx{name}	= "($rx{nmchar}+)";
	$rx{d}		= "[0-9]";
	$rx{notnm}	= "([^-a-z0-9\\\\]|$rx{latin1})";
	$rx{w}		= "([ \\t\\n]*)";
	$rx{num}	= "($rx{d}+|$rx{d}*\\.$rx{d}+)";
	$rx{string}	= "(\"($rx{stringchar}|\')*\"|\'($rx{stringchar}|\")*\')";

	$self->add_toke_rule('COMMENT'		, "\\/\\*(\\*[^\\/]|[^\\*])*\\*\\/");

	$self->add_toke_rule('IMPORT_SYM'	, "\@import");
	$self->add_toke_rule('IMPORTANT_SYM'	, "!$rx{w}important");
	$self->add_toke_rule('IDENT'		, $rx{ident});
	$self->add_toke_rule('STRING'		, $rx{string});

	$self->add_toke_rule('NUMBER'		, $rx{num});

	$self->add_toke_rule('LINK_PSCLASS'	, "\\:link");
	$self->add_toke_rule('VISITED_PSCLASS'	, "\\:visited");
	$self->add_toke_rule('ACTIVE_PSCLASS'	, "\\:active");
	$self->add_toke_rule('FIRST_LINE'	, "\\:first-line");
	$self->add_toke_rule('FIRST_LETTER'	, "\\:first-letter");

	$self->add_toke_rule('HASH'		, "\\#$rx{name}");
	$self->add_toke_rule('CLASS'		, "\\.$rx{name}");


	$self->add_toke_rule('CDO'		, "<!--");
	$self->add_toke_rule('CDC'		, "-->");

	$self->add_toke_rule('WHITESPACE'	, '[ \t\n]+');

my $junk = qq~

this is kinda weird - what does the slash mean here? it's not literal...

{num}				{BEGIN(0); return NUMBER;}
{num}"%"			{BEGIN(0); return PERCENTAGE;}
{num}pt/{notnm}			{BEGIN(0); return LENGTH;}
{num}mm/{notnm}			{BEGIN(0); return LENGTH;}
{num}cm/{notnm}			{BEGIN(0); return LENGTH;}
{num}pc/{notnm}			{BEGIN(0); return LENGTH;}
{num}in/{notnm}			{BEGIN(0); return LENGTH;}
{num}px/{notnm}			{BEGIN(0); return LENGTH;}
{num}em/{notnm}			{BEGIN(0); return EMS;}
{num}ex/{notnm}			{BEGIN(0); return EXS;}

url\({w}{string}{w}\)					|
url\({w}([^ \n\'\")]|\\\ |\\\'|\\\"|\\\))+{w}\)		{BEGIN(0); return URL;}
rgb\({w}{num}%?{w}\,{w}{num}%?{w}\,{w}{num}%?{w}\)	{BEGIN(0); return RGB;}

~;

	$self->add_toke_rule('_SEMICOLON'	, ';');
	$self->add_toke_rule('_MINUS'		, '-');
	$self->add_toke_rule('_PLUS'		, '\\+');
	$self->add_toke_rule('_SLASH'		, '/');
	$self->add_toke_rule('_COMMA'		, ',');
	$self->add_toke_rule('_BRACE_OPEN'	, '\\{');
	$self->add_toke_rule('_BRACE_CLOSE'	, '\\}');
	$self->add_toke_rule('_COLON'		, '\\:');

	$self->add_lex_rule('stylesheet'	, '[CDO|CDC]* [ import [CDO|CDC]* ]* [ ruleset [CDO|CDC]* ]*');
	$self->add_lex_rule('import'		, 'IMPORT_SYM [STRING|URL] _SEMICOLON');
	$self->add_lex_rule('unary_operator'	, '_MINUS | _PLUS');
	$self->add_lex_rule('operator'		, '_SLASH | _COMMA | ');
	$self->add_lex_rule('property'		, 'IDENT');
	$self->add_lex_rule('ruleset'		, 'selector [ _COMMA selector ]* _BRACE_OPEN declaration [ _SEMICOLON declaration ]* _BRACE_CLOSE');
	$self->add_lex_rule('selector'		, 'simple_selector+ [ pseudo_element ]? | pseudo_element');
	$self->add_lex_rule('simple_selector'	, 'element_name id? class? pseudo_class? | id class? pseudo_class? | class pseudo_class? | pseudo_class');
	$self->add_lex_rule('element_name'	, 'IDENT');
	$self->add_lex_rule('pseudo_class'	, 'LINK_PSCLASS | VISITED_PSCLASS | ACTIVE_PSCLASS');
	$self->add_lex_rule('class'		, 'CLASS');
	$self->add_lex_rule('pseudo_element'	, 'FIRST_LETTER | FIRST_LINE');
	$self->add_lex_rule('id'		, 'HASH');
	$self->add_lex_rule('declaration'	, 'property _COLON expr prio? | ');
	$self->add_lex_rule('prio'		, 'IMPORTANT_SYM');
	$self->add_lex_rule('expr'		, 'term [ operator term ]*');
	$self->add_lex_rule('term'		, 'unary_operator?  [ NUMBER | STRING | PERCENTAGE | LENGTH | EMS | EXS | IDENT | hexcolor | URL | RGB ]');
	$self->add_lex_rule('hexcolor'		, 'HASH | HASH_AFTER_IDENT');

	$self->set_base('stylesheet');
}

sub toke {
	my ($self, $input) = @_;

	#
	# CSS 1 treats whitespace oddly - we need to toke and then remove all
	# WHITESPACE tokens before we try and lex.
	#

	my $tokens = $self->SUPER::toke($input);
	my $out = [];

	for my $token (@{$tokens}){

		next if $token->{type} eq 'WHITESPACE';
		next if $token->{type} eq 'COMMENT';

		push @{$out}, $token;
	}

	return $out;
}
	
1;
