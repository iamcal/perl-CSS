package CSS::Grammar::CSS10;

use strict;
use warnings;
use Data::Dumper;

use base 'CSS::Grammar';

use CSS::Stylesheet;
use CSS::Ruleset;
use CSS::Declaration;
use CSS::Selector;
use CSS::AtRule;


#
# http://www.w3.org/TR/REC-CSS1-961217.html#appendix-b
#

sub init {
	my ($self) = @_;

	my %rx;

	#####################################################################################

	$self->{case_insensitive} = 1;


	#####################################################################################

	#unicode		\\[0-9a-f]{1,4}
	#latin1		[¡-ÿ]
	#escape		{unicode}|\\[ -~¡-ÿ]
	#stringchar	{escape}|{latin1}|[ !#$%&(-~]
	#nmstrt		[a-z]|{latin1}|{escape}
	#nmchar		[-a-z0-9]|{latin1}|{escape}
	#ident		{nmstrt}{nmchar}*
	#name		{nmchar}+
	#d		[0-9]
	#notnm		[^-a-z0-9\\]|{latin1}
	#w		[ \t\n]*
	#num		{d}+|{d}*\.{d}+
	#string		\"({stringchar}|\')*\"|\'({stringchar}|\")*\'

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


	#####################################################################################

	#"/*"				{BEGIN(COMMENT);}
	#<COMMENT>"*/"			{BEGIN(0);}
	#<COMMENT>\n			{/* ignore */}
	#<COMMENT>.			{/* ignore */}
	#@import				{BEGIN(0); return IMPORT_SYM;}
	#"!"{w}important			{BEGIN(0); return IMPORTANT_SYM;}
	#{ident}				{BEGIN(AFTER_IDENT); return IDENT;}
	#{string}			{BEGIN(0); return STRING;}

	$self->add_toke_rule('COMMENT'		, "\\/\\*(\\*[^\\/]|[^\\*])*\\*\\/");
	$self->add_toke_rule('IMPORT_SYM'	, "\@import");
	$self->add_toke_rule('IMPORTANT_SYM'	, "!$rx{w}important");
	$self->add_toke_rule('IDENT'		, $rx{ident});
	$self->add_toke_rule('STRING'		, $rx{string});


	#{num}				{BEGIN(0); return NUMBER;}
	#{num}"%"			{BEGIN(0); return PERCENTAGE;}
	#{num}pt/{notnm}			{BEGIN(0); return LENGTH;}
	#{num}mm/{notnm}			{BEGIN(0); return LENGTH;}
	#{num}cm/{notnm}			{BEGIN(0); return LENGTH;}
	#{num}pc/{notnm}			{BEGIN(0); return LENGTH;}
	#{num}in/{notnm}			{BEGIN(0); return LENGTH;}
	#{num}px/{notnm}			{BEGIN(0); return LENGTH;}
	#{num}em/{notnm}			{BEGIN(0); return EMS;}
	#{num}ex/{notnm}			{BEGIN(0); return EXS;}

	$self->add_toke_rule('NUMBER'		, $rx{num});
	# TODO: 
	# this is kinda weird - what does the slash mean here? it's not literal.
	# need to revisit this block of rules


	#<AFTER_IDENT>":"link		{return LINK_PSCLASS_AFTER_IDENT;}
	#<AFTER_IDENT>":"visited	{return VISITED_PSCLASS_AFTER_IDENT;}
	#<AFTER_IDENT>":"active	{return ACTIVE_PSCLASS_AFTER_IDENT;}
	#<AFTER_IDENT>":"first-line	{return FIRST_LINE_AFTER_IDENT;}
	#<AFTER_IDENT>":"first-letter	{return FIRST_LETTER_AFTER_IDENT;}
	#<AFTER_IDENT>"#"{name}		{return HASH_AFTER_IDENT;}
	#<AFTER_IDENT>"."{name}		{return CLASS_AFTER_IDENT;}

	#":"link				{BEGIN(AFTER_IDENT); return LINK_PSCLASS;}
	#":"visited			{BEGIN(AFTER_IDENT); return VISITED_PSCLASS;}
	#":"active			{BEGIN(AFTER_IDENT); return ACTIVE_PSCLASS;}
	#":"first-line			{BEGIN(AFTER_IDENT); return FIRST_LINE;}
	#":"first-letter			{BEGIN(AFTER_IDENT); return FIRST_LETTER;}
	#"#"{name}			{BEGIN(AFTER_IDENT); return HASH;}
	#"."{name}			{BEGIN(AFTER_IDENT); return CLASS;}

	# all this <AFTER_IDENT> crap isn't really needed - it's just for context once we
	# finish the parse (or so it seems to me) and doesn;t actually affect the toke/lex

	$self->add_toke_rule('LINK_PSCLASS'	, "\\:link");
	$self->add_toke_rule('VISITED_PSCLASS'	, "\\:visited");
	$self->add_toke_rule('ACTIVE_PSCLASS'	, "\\:active");
	$self->add_toke_rule('FIRST_LINE'	, "\\:first-line");
	$self->add_toke_rule('FIRST_LETTER'	, "\\:first-letter");

	$self->add_toke_rule('HASH'		, "\\#$rx{name}");
	$self->add_toke_rule('CLASS'		, "\\.$rx{name}");


	#url\({w}{string}{w}\)					|
	#url\({w}([^ \n\'\")]|\\\ |\\\'|\\\"|\\\))+{w}\)		{BEGIN(0); return URL;}
	#rgb\({w}{num}%?{w}\,{w}{num}%?{w}\,{w}{num}%?{w}\)	{BEGIN(0); return RGB;}

	# TODO:
	# i've not done these rules yet


	#[ \t]+				{BEGIN(0); /* ignore whitespace */}
	#\n				{BEGIN(0); /* ignore whitespace */}
	#\<\!\-\-			{BEGIN(0); return CDO;}
	#\-\-\>				{BEGIN(0); return CDC;}

	$self->add_toke_rule('CDO'		, "<!--");
	$self->add_toke_rule('CDC'		, "-->");

	# i've modified this to include carriage-return, otherwise windows CSS will fail to parse
	$self->add_toke_rule('WHITESPACE'	, '[ \t\r\n]+');


	#####################################################################################

	$self->add_toke_rule('_SEMICOLON'	, ';');
	$self->add_toke_rule('_MINUS'		, '-');
	$self->add_toke_rule('_PLUS'		, '\\+');
	$self->add_toke_rule('_SLASH'		, '/');
	$self->add_toke_rule('_COMMA'		, ',');
	$self->add_toke_rule('_BRACE_OPEN'	, '\\{');
	$self->add_toke_rule('_BRACE_CLOSE'	, '\\}');
	$self->add_toke_rule('_COLON'		, '\\:');


	#####################################################################################

	#stylesheet
	# : [CDO|CDC]* [ import [CDO|CDC]* ]* [ ruleset [CDO|CDC]* ]*
	# ;
	#import
	# : IMPORT_SYM [STRING|URL] ';'		/* E.g., @import url(fun.css); */
	# ;
	#unary_operator
	# : '-' | '+'
	# ;
	#operator
	# : '/' | ',' | /* empty */
	# ;

	$self->add_lex_rule('stylesheet'	, '[CDO|CDC]* [ import [CDO|CDC]* ]* [ ruleset [CDO|CDC]* ]*');
	$self->add_lex_rule('import'		, 'IMPORT_SYM [STRING|URL] _SEMICOLON');
	$self->add_lex_rule('unary_operator'	, '_MINUS | _PLUS');
	$self->add_lex_rule('operator'		, '_SLASH | _COMMA | ');


	#property
	# : IDENT
	# ;
	#ruleset
	# : selector [ ',' selector ]*
	#   '{' declaration [ ';' declaration ]* '}'
	# ;
	#selector
	# : simple_selector+ [ pseudo_element | solitary_pseudo_element ]?
	# | solitary_pseudo_element
	# ;

	$self->add_lex_rule('property'		, 'IDENT');
	$self->add_lex_rule('ruleset'		, 'selector [ _COMMA selector ]* _BRACE_OPEN declaration [ _SEMICOLON declaration ]* _BRACE_CLOSE');
	$self->add_lex_rule('selector'		, 'simple_selector+ [ pseudo_element ]? | pseudo_element');

	# used for inline styles
	$self->add_lex_rule('declarations'		, 'declaration [ _SEMICOLON declaration ]*');


	#simple_selector
	# : element_name id? class? pseudo_class?	/* eg: H1.subject */
	# | solitary_id class? pseudo_class?		/* eg: #xyz33 */
	# | solitary_class pseudo_class?			/* eg: .author */
	# | solitary_pseudo_class			/* eg: :link */
	# ;
	#element_name
	# : IDENT
	# ;
	#pseudo_class					/* as in:  A:link */
	# : LINK_PSCLASS_AFTER_IDENT
	# | VISITED_PSCLASS_AFTER_IDENT
	# | ACTIVE_PSCLASS_AFTER_IDENT
	# ;
	#solitary_pseudo_class				/* as in:  :link */
	# : LINK_PSCLASS
	# | VISITED_PSCLASS
	# | ACTIVE_PSCLASS
	# ;

	$self->add_lex_rule('simple_selector'	, 'element_name id? class? pseudo_class? | id class? pseudo_class? | class pseudo_class? | pseudo_class');
	$self->add_lex_rule('element_name'	, 'IDENT');
	$self->add_lex_rule('pseudo_class'	, 'LINK_PSCLASS | VISITED_PSCLASS | ACTIVE_PSCLASS');


	#class						/* as in:  P.note */
	# : CLASS_AFTER_IDENT
	# ;
	#solitary_class					/* as in:  .note */
	# : CLASS
	# ;
	#pseudo_element					/* as in:  P:first-line */
	# : FIRST_LETTER_AFTER_IDENT
	# | FIRST_LINE_AFTER_IDENT
	# ;
	#solitary_pseudo_element				/* as in:  :first-line */
	# : FIRST_LETTER
	# | FIRST_LINE
	# ;

	$self->add_lex_rule('class'		, 'CLASS');
	$self->add_lex_rule('pseudo_element'	, 'FIRST_LETTER | FIRST_LINE');


	#id
	# : HASH_AFTER_IDENT
	# ;
	#solitary_id
	# : HASH
	# ;
	#declaration
	# : property ':' expr prio? 
	# | /* empty */				/* Prevents syntax errors... */
	# ;
	#prio
	# : IMPORTANT_SYM	 		/* !important */
	# ;
	#expr
	# : term [ operator term ]*
	# ;

	$self->add_lex_rule('id'		, 'HASH');
	$self->add_lex_rule('declaration'	, 'property _COLON expr prio? | ');
	$self->add_lex_rule('prio'		, 'IMPORTANT_SYM');
	$self->add_lex_rule('expr'		, 'term [ operator term ]*');


	#term
	# : unary_operator?
	#   [ NUMBER | STRING | PERCENTAGE | LENGTH | EMS | EXS
	#   | IDENT | hexcolor | URL | RGB ]
	# ;
	#hexcolor
	# : HASH | HASH_AFTER_IDENT
	# ;

	$self->add_lex_rule('term'		, 'unary_operator?  [ NUMBER | STRING | PERCENTAGE | LENGTH | EMS | EXS | IDENT | hexcolor | URL | RGB ]');
	$self->add_lex_rule('hexcolor'		, 'HASH | HASH_AFTER_IDENT');


	#####################################################################################

	$self->set_base('sheet', 'stylesheet');
	$self->set_base('inline', 'declarations');
}

sub toke {
	my ($self, $input) = @_;

	#
	# CSS 1 treats whitespace oddly - we need to toke and then remove all
	# WHITESPACE tokens before we try and lex. we'll do the same with
	# comments (the other modules do this differently right now). maybe
	# we should remove these tokens at the start of lexing instead?
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

sub walk_stylesheet {
	my ($self, $match) = @_;

	my $ret = $self->walk_nodes(['ruleset', 'atrule'], $match->{submatches}, 3);

	my $sheet = new CSS::Stylesheet;

	$sheet->{rulesets} = $ret->{ruleset};
	$sheet->{atrules} = $ret->{atrule};
	$sheet->{items} = $ret->{all};

	return $sheet;
}

sub walk_ruleset {
	my ($self, $match) = @_;

	my $ret = $self->walk_nodes(['selector', 'declaration'], $match->{submatches}, 3);

	my $ruleset = new CSS::Ruleset;

	$ruleset->{selectors}		= $ret->{selector};
	$ruleset->{declarations}	= $ret->{declaration};

	return $ruleset;
}

sub walk_selector {
	my ($self, $match) = @_;

	my $sel = $self->SUPER::trim($match->{matched_text});

	return new CSS::Selector($sel);
}

sub walk_declaration {
	my ($self, $match) = @_;

	my $declaration = new CSS::Declaration;

	for my $submatch (@{$match->{submatches}}){

		next unless defined $submatch->{subrule};

		if ($submatch->{subrule} eq 'property'){

			$declaration->{property} = $submatch->{matched_text};
		}

		if ($submatch->{subrule} eq 'expr'){

			my $value = $self->SUPER::trim($submatch->{matched_text});
			$declaration->{value} = $value;
			$declaration->{simple_value} = $value;
		}

		if ($submatch->{subrule} eq 'prio'){

			my $value = $self->SUPER::trim($submatch->{matched_text});
			$declaration->{prio} = $value;
			$declaration->{simple_value} .= ' '.$value;
		}
	}

	return $declaration;
}
	
1;
