package CSS::Grammar::CSS21;

use strict;
use warnings;

use base 'CSS::Grammar';

#
# http://www.w3.org/TR/CSS21/
# http://www.w3.org/TR/CSS21/grammar.html
# http://www.w3.org/TR/CSS21/syndata.html#parsing-errors
#

sub init {
	my ($self) = @_;

	my %rx;

	#####################################################################################

	$self->{case_insensitive} = 1;


	#####################################################################################

	#h		[0-9a-f]
	#nonascii	[\200-\377]
	#unicode		\\{h}{1,6}(\r\n|[ \t\r\n\f])?
	#escape		{unicode}|\\[^\r\n\f0-9a-f]
	#s		[ \t\r\n\f]+
	#w		{s}?
	#nl		\n|\r\n|\r|\f

	$rx{h}		= '[0-9a-f]';
	$rx{nonascii}	= '[\\x80-\\xff]';
	$rx{unicode}	= '(\\'.$rx{h}.'{1,6}(\\r\\n|[ \\t\\r\\n\\f])?)';
	$rx{escape}	= '('.$rx{unicode}.'|\\\\[ -~\\x80-\\xff])';
	$rx{s}		= '[ \t\r\n\f]';
	$rx{w}		= "$rx{s}*";
	$rx{nl}		= '(\\n|\\r\\n|\\r|\\f)';


	#nmstart		[_a-z]|{nonascii}|{escape}
	#nmchar		[_a-z0-9-]|{nonascii}|{escape}
	#string1		\"([^\n\r\f\\"]|\\{nl}|{escape})*\"
	#string2		\'([^\n\r\f\\']|\\{nl}|{escape})*\'

	$rx{nmstart}	= '([_a-z]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{nmchar}	= '([_a-zA-Z0-9-]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{string1}	= '("([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|\'|('.$rx{nonascii}.')|('.$rx{escape}.'))*")';
	$rx{string2}	= '(\'([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|"|('.$rx{nonascii}.')|('.$rx{escape}.'))*\')';


	#ident		-?{nmstart}{nmchar}*
	#name		{nmchar}+
	#num		[0-9]+|[0-9]*"."[0-9]+
	#string		{string1}|{string2}
	#url		([!#$%&*-~]|{nonascii}|{escape})*

	$rx{ident}	= "$rx{nmstart}$rx{nmchar}*";
	$rx{name}	= "$rx{nmchar}+";
	$rx{num}	= '([0-9]+|[0-9]*\\.[0-9]+)';
	$rx{string}	= "($rx{string1}|$rx{string2})";
	$rx{url}	= "(([!#\$%&*-~]|$rx{nonascii}|$rx{escape})*)";


	# these aren't used in any productions...
	#invalid1	\"([^\n\r\f\\"]|\\{nl}|{escape})*
	#invalid2	\'([^\n\r\f\\']|\\{nl}|{escape})*
	#invalid		{invalid1}|{invalid2}


	#A		a|\\0{0,4}(41|61)(\r\n|[ \t\r\n\f])?
	#C		c|\\0{0,4}(43|63)(\r\n|[ \t\r\n\f])?
	#D		d|\\0{0,4}(44|64)(\r\n|[ \t\r\n\f])?
	#E		e|\\0{0,4}(45|65)(\r\n|[ \t\r\n\f])?
	#G		g|\\0{0,4}(47|67)(\r\n|[ \t\r\n\f])?|\\g
	#H		h|\\0{0,4}(48|68)(\r\n|[ \t\r\n\f])?|\\h
	#I		i|\\0{0,4}(49|69)(\r\n|[ \t\r\n\f])?|\\i
	#K		k|\\0{0,4}(4b|6b)(\r\n|[ \t\r\n\f])?|\\k
	#M		m|\\0{0,4}(4d|6d)(\r\n|[ \t\r\n\f])?|\\m
	#N		n|\\0{0,4}(4e|6e)(\r\n|[ \t\r\n\f])?|\\n
	#O		o|\\0{0,4}(51|71)(\r\n|[ \t\r\n\f])?|\\o
	#P		p|\\0{0,4}(50|70)(\r\n|[ \t\r\n\f])?|\\p
	#R		r|\\0{0,4}(52|72)(\r\n|[ \t\r\n\f])?|\\r
	#S		s|\\0{0,4}(53|73)(\r\n|[ \t\r\n\f])?|\\s
	#T		t|\\0{0,4}(54|74)(\r\n|[ \t\r\n\f])?|\\t
	#X		x|\\0{0,4}(58|78)(\r\n|[ \t\r\n\f])?|\\x
	#Z		z|\\0{0,4}(5a|7a)(\r\n|[ \t\r\n\f])?|\\z

	$rx{A}		= '(a|\\\\0{0,4}(41|61)(\r\n|[ \t\r\n\f])?)';
	$rx{C}		= '(c|\\\\0{0,4}(43|63)(\r\n|[ \t\r\n\f])?)';
	$rx{D}		= '(d|\\\\0{0,4}(44|64)(\r\n|[ \t\r\n\f])?)';
	$rx{E}		= '(e|\\\\0{0,4}(45|65)(\r\n|[ \t\r\n\f])?)';
	$rx{G}		= '(g|\\\\0{0,4}(47|67)(\r\n|[ \t\r\n\f])?|\\\\g)';
	$rx{H}		= '(h|\\\\0{0,4}(48|68)(\r\n|[ \t\r\n\f])?|\\\\h)';
	$rx{I}		= '(i|\\\\0{0,4}(49|69)(\r\n|[ \t\r\n\f])?|\\\\i)';
	$rx{K}		= '(k|\\\\0{0,4}(4b|6b)(\r\n|[ \t\r\n\f])?|\\\\k)';
	$rx{M}		= '(m|\\\\0{0,4}(4d|6d)(\r\n|[ \t\r\n\f])?|\\\\m)';
	$rx{N}		= '(n|\\\\0{0,4}(4e|6e)(\r\n|[ \t\r\n\f])?|\\\\n)';
	$rx{O}		= '(o|\\\\0{0,4}(51|71)(\r\n|[ \t\r\n\f])?|\\\\o)';
	$rx{P}		= '(p|\\\\0{0,4}(50|70)(\r\n|[ \t\r\n\f])?|\\\\p)';
	$rx{R}		= '(r|\\\\0{0,4}(52|72)(\r\n|[ \t\r\n\f])?|\\\\r)';
	$rx{S}		= '(s|\\\\0{0,4}(53|73)(\r\n|[ \t\r\n\f])?|\\\\s)';
	$rx{T}		= '(t|\\\\0{0,4}(54|74)(\r\n|[ \t\r\n\f])?|\\\\t)';
	$rx{X}		= '(x|\\\\0{0,4}(58|78)(\r\n|[ \t\r\n\f])?|\\\\x)';
	$rx{Z}		= '(z|\\\\0{0,4}(5a|7a)(\r\n|[ \t\r\n\f])?|\\\\z)';


	#####################################################################################

	#{s}			{return S;}
	#"<!--"		{return CDO;}
	#"-->"			{return CDC;}
	#"~="			{return INCLUDES;}
	#"|="			{return DASHMATCH;}

	$self->add_toke_rule('S'		, "$rx{s}+");
	$self->add_toke_rule('CDO'		, '<!--');
	$self->add_toke_rule('CDC'		, '-->');
	$self->add_toke_rule('INCLUDES'		, '~=');
	$self->add_toke_rule('DASHMATCH'	, '\\|=');


	#{w}"{"			{return LBRACE;}
	#{w}"+"			{return PLUS;}
	#{w}">"			{return GREATER;}
	#{w}","			{return COMMA;}

	$self->add_toke_rule('LBRACE'		, "$rx{w}\\{");
	$self->add_toke_rule('PLUS'		, "$rx{w}\\+");
	$self->add_toke_rule('GREATER'		, "$rx{w}>");
	$self->add_toke_rule('COMMA'		, "$rx{w},");


	#{string}		{return STRING;}
	#{invalid}		{return INVALID; /* unclosed string */}
	#{ident}			{return IDENT;}
	#"#"{name}		{return HASH;}

	$self->add_toke_rule('STRING'		, $rx{string});
	$self->add_toke_rule('IDENT'		, $rx{ident});
	$self->add_toke_rule('HASH'		, "#$rx{name}");


	#@{I}{M}{P}{O}{R}{T}	{return IMPORT_SYM;}
	#@{P}{A}{G}{E}		{return PAGE_SYM;}
	#@{M}{E}{D}{I}{A}	{return MEDIA_SYM;}
	#@{C}{H}{A}{R}{S}{E}{T}	{return CHARSET_SYM;}

	#"!"({w}|{comment})*{I}{M}{P}{O}{R}{T}{A}{N}{T}	{return IMPORTANT_SYM;}

	$self->add_toke_rule('IMPORT_SYM'	, "\@$rx{I}$rx{M}$rx{P}$rx{O}$rx{R}$rx{T}");
	$self->add_toke_rule('PAGE_SYM'		, "\@$rx{P}$rx{A}$rx{G}$rx{E}");
	$self->add_toke_rule('MEDIA_SYM'	, "\@$rx{M}$rx{E}$rx{D}$rx{I}$rx{A}");
	$self->add_toke_rule('CHARSET_SYM'	, "\@$rx{C}$rx{H}$rx{A}$rx{R}$rx{S}$rx{E}$rx{T}");

	$self->add_toke_rule('IMPORTANT_SYM'	, "!$rx{w}$rx{I}$rx{M}$rx{P}$rx{O}$rx{R}$rx{T}$rx{A}$rx{N}$rx{T}");


	#{num}{E}{M}		{return EMS;}
	#{num}{E}{X}		{return EXS;}
	#{num}{P}{X}		{return LENGTH;}
	#{num}{C}{M}		{return LENGTH;}
	#{num}{M}{M}		{return LENGTH;}
	#{num}{I}{N}		{return LENGTH;}
	#{num}{P}{T}		{return LENGTH;}
	#{num}{P}{C}		{return LENGTH;}
	#{num}{D}{E}{G}		{return ANGLE;}
	#{num}{R}{A}{D}		{return ANGLE;}
	#{num}{G}{R}{A}{D}	{return ANGLE;}
	#{num}{M}{S}		{return TIME;}
	#{num}{S}		{return TIME;}
	#{num}{H}{Z}		{return FREQ;}
	#{num}{K}{H}{Z}		{return FREQ;}
	#{num}{ident}		{return DIMENSION;}

	#{num}%			{return PERCENTAGE;}
	#{num}			{return NUMBER;}

	$self->add_toke_rule('EMS'		, "$rx{num}$rx{E}$rx{M}");
	$self->add_toke_rule('EXS'		, "$rx{num}$rx{E}$rx{X}");
	$self->add_toke_rule('LENGTH'		, "$rx{num}($rx{P}$rx{X}|$rx{C}$rx{M}|$rx{M}$rx{M}|$rx{I}$rx{N}|$rx{P}$rx{T}|$rx{P}$rx{C})");
	$self->add_toke_rule('ANGLE'		, "$rx{num}($rx{D}$rx{E}$rx{G}|$rx{R}$rx{A}$rx{D}|$rx{G}$rx{R}$rx{A}$rx{D})");
	$self->add_toke_rule('TIME'		, "$rx{num}($rx{M}$rx{S}|$rx{S})");
	$self->add_toke_rule('FREQ'		, "$rx{num}($rx{H}$rx{Z}|$rx{K}$rx{H}$rx{Z})");
	$self->add_toke_rule('DIMEN'		, "$rx{num}$rx{ident}");
	$self->add_toke_rule('PERCENTAGE'	, "$rx{num}%");
	$self->add_toke_rule('NUMBER'		, "$rx{num}");


	#"url("{w}{string}{w}")"	{return URI;}
	#"url("{w}{url}{w}")"	{return URI;}
	#{ident}"("		{return FUNCTION;}

	$self->add_toke_rule('URI'		, "url\\($rx{w}($rx{string}|$rx{url})$rx{w}\\)");
	$self->add_toke_rule('FUNCTION'		, "$rx{ident}\\(");


	#####################################################################################

	$self->add_toke_rule('_SEMICOLON'	, ';');
	$self->add_toke_rule('_BRACE_CLOSE'	, '}');
	$self->add_toke_rule('_COLON'		, ':');
	$self->add_toke_rule('_SLASH'		, '/');
	$self->add_toke_rule('_MINUS'		, '-');
	$self->add_toke_rule('_PERIOD'		, '\\.');
	$self->add_toke_rule('_STAR'		, '\\*');
	$self->add_toke_rule('_SQUARE_OPEN'	, '\\[');
	$self->add_toke_rule('_SQUARE_CLOSE'	, '\\]');
	$self->add_toke_rule('_EQUALS'		, '=');
	$self->add_toke_rule('_ROUND_CLOSE'	, '\\)');


	#####################################################################################

	#stylesheet
	#  : [ CHARSET_SYM STRING ';' ]?
	#    [S|CDO|CDC]* [ import [S|CDO|CDC]* ]*
	#    [ [ ruleset | media | page ] [S|CDO|CDC]* ]*
	#  ;
	#import
	#  : IMPORT_SYM S*
	#    [STRING|URI] S* [ medium [ COMMA S* medium]* ]? ';' S*
	#  ;
	#media
	#  : MEDIA_SYM S* medium [ COMMA S* medium ]* LBRACE S* ruleset* '}' S*
	#  ;

	$self->add_lex_rule('stylesheet', '[ CHARSET_SYM S* STRING S* _SEMICOLON ]? [S|CDO|CDC]* [ import [S|CDO|CDC]* ]* '.
		'[ [ ruleset | media | page ] [S|CDO|CDC]* ]*');
	$self->add_lex_rule('import', 'IMPORT_SYM S* [STRING|URI] S* [ medium [ COMMA S* medium]* ]? _SEMICOLON S*');
	$self->add_lex_rule('media', 'MEDIA_SYM S* medium [ COMMA S* medium ]* LBRACE S* ruleset* _BRACE_CLOSE S*');


	#medium
	#  : IDENT S*
	#  ;
	#page
	#  : PAGE_SYM S* pseudo_page? S*
	#    LBRACE S* declaration [ ';' S* declaration ]* '}' S*
	#  ;
	#pseudo_page
	#  : ':' IDENT
	#  ;
	#operator
	#  : '/' S* | COMMA S* | /* empty */
	#  ;

	$self->add_lex_rule('medium', 'IDENT S*');
	$self->add_lex_rule('page', 'PAGE_SYM S* pseudo_page? S* LBRACE S* declaration [ _SEMICOLON S* declaration ]* _BRACE_CLOSE S*');
	$self->add_lex_rule('pseudo_page', '_COLON IDENT');
	$self->add_lex_rule('operator', '_SLASH S* | COMMA S* | ');


	#combinator
	#  : PLUS S*
	#  | GREATER S*
	#  | S
	#  ;
	#unary_operator
	#  : '-' | PLUS
	#  ;
	#property
	#  : IDENT S*
	#  ;
	#ruleset
	#  : selector [ COMMA S* selector ]*
	#    LBRACE S* declaration [ ';' S* declaration ]* '}' S*
	#  ;

	$self->add_lex_rule('combinator', 'PLUS S* | GREATER S* | S+');
	$self->add_lex_rule('unary_operator', '_MINUS | PLUS');
	$self->add_lex_rule('property', 'IDENT S*');
	$self->add_lex_rule('ruleset', 'selector [ COMMA S* selector ]* S* LBRACE S* declaration [ _SEMICOLON S* declaration ]* _BRACE_CLOSE S*');

	# used for inline styles
	$self->add_lex_rule('declarations', 'S* declaration [ _SEMICOLON S* declaration ]*');


	#selector
	#  : simple_selector [ combinator simple_selector ]*
	#  ;
	#simple_selector
	#  : element_name [ HASH | class | attrib | pseudo ]*
	#  | [ HASH | class | attrib | pseudo ]+
	#  ;
	#class
	#  : '.' IDENT
	#  ;
	#element_name
	#  : IDENT | '*'
	#  ;

	$self->add_lex_rule('selector', 'simple_selector [ combinator simple_selector ]*');
	$self->add_lex_rule('simple_selector', 'element_name [ HASH | class | attrib | pseudo ]* | [ HASH | class | attrib | pseudo ]+');
	$self->add_lex_rule('class', '_PERIOD IDENT');
	$self->add_lex_rule('element_name', 'IDENT | _STAR');


	#attrib
	#  : '[' S* IDENT S* [ [ '=' | INCLUDES | DASHMATCH ] S*
	#    [ IDENT | STRING ] S* ]? ']'
	#  ;
	#pseudo
	#  : ':' [ IDENT | FUNCTION S* IDENT? S* ')' ]
	#  ;
	#declaration
	#  : property ':' S* expr prio?
	#  | /* empty */
	#  ;
	#prio
	#  : IMPORTANT_SYM S*
	#  ;

	$self->add_lex_rule('attrib', '_SQUARE_OPEN S* IDENT S* [ [ _EQUALS | INCLUDES | DASHMATCH ] S* [ IDENT | STRING ] S* ]? _SQUARE_CLOSE');
	$self->add_lex_rule('pseudo', '_COLON [ IDENT | FUNCTION S* IDENT? S* _ROUND_CLOSE ]');
	$self->add_lex_rule('declaration', 'property _COLON S* expr prio? | ');
	$self->add_lex_rule('prio', 'IMPORTANT_SYM S*');


	##expr
	#  : term [ operator term ]*
	#  ;
	#term
	#  : unary_operator?
	#    [ NUMBER S* | PERCENTAGE S* | LENGTH S* | EMS S* | EXS S* | ANGLE S* |
	#      TIME S* | FREQ S* ]
	#  | STRING S* | IDENT S* | URI S* | hexcolor | function
	#  ;
	#function
	#  : FUNCTION S* expr ')' S*
	#  ;
	#hexcolor
	#  : HASH S*
	#  ;

	$self->add_lex_rule('expr', 'term [ operator term ]*');
	$self->add_lex_rule('term', 'unary_operator? [ NUMBER S* | PERCENTAGE S* | LENGTH S* | EMS S* | EXS S* | ANGLE S* | TIME S* | FREQ S* ] '.
		'| STRING S* | IDENT S* | URI S* | hexcolor | function');
	$self->add_lex_rule('function', 'FUNCTION S* expr _ROUND_CLOSE S*');
	$self->add_lex_rule('hexcolor', 'HASH S*');


	#####################################################################################

	$self->set_base('sheet', 'stylesheet');
	$self->set_base('inline', 'declarations');
}

sub toke {
	my ($self, $input) = @_;

	# strip comments first
	$input =~ s!/\*[^*]*\*+([^/*][^*]*\*+)*/! !g;

	$self->SUPER::toke($input);
}
	
1;
