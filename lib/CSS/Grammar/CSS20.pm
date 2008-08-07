package CSS::Grammar::CSS20;

use strict;
use warnings;

use base 'CSS::Grammar';

#
# http://www.w3.org/TR/1998/REC-CSS2-19980512/Overview.html
# http://www.w3.org/TR/REC-CSS2/grammar.html
# http://www.w3.org/TR/REC-CSS2/syndata.html#parsing-errors
#

sub init {
	my ($self) = @_;

	my %rx;

	#####################################################################################

	#%option case-insensitive

	$self->{case_insensitive} = 1;


	#####################################################################################

	#h		[0-9a-f]
	#nonascii	[\200-\377]
	#unicode		\\{h}{1,6}[ \t\r\n\f]?
	#escape		{unicode}|\\[ -~\200-\377]
	#w		[ \t\r\n\f]*
	#nl		\n|\r\n|\r|\f

	$rx{h}		= '[0-9a-f]';
	$rx{nonascii}	= '[\\x80-\\xff]';
	$rx{unicode}	= '(\\'.$rx{h}.'{1,6}(\\r\\n|[ \\t\\r\\n\\f])?)';
	$rx{escape}	= '('.$rx{unicode}.'|\\\\[ -~\\x80-\\xff])';
	$rx{w}		= '[ \t\r\n\f]*';
	$rx{nl}		= '(\\n|\\r\\n|\\r|\\f)';


	#nmstart		[a-z]|{nonascii}|{escape}
	#nmchar		[a-z0-9-]|{nonascii}|{escape}
	#string1		\"([\t !#$%&(-~]|\\{nl}|\'|{nonascii}|{escape})*\"
	#string2		\'([\t !#$%&(-~]|\\{nl}|\"|{nonascii}|{escape})*\'

	$rx{nmstart}	= '([_a-z]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{nmchar}	= '([_a-zA-Z0-9-]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{string1}	= '("([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|\'|('.$rx{nonascii}.')|('.$rx{escape}.'))*")';
	$rx{string2}	= '(\'([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|"|('.$rx{nonascii}.')|('.$rx{escape}.'))*\')';


	#ident		{nmstart}{nmchar}*
	#name		{nmchar}+
	#num		[0-9]+|[0-9]*"."[0-9]+
	#string		{string1}|{string2}
	#url		([!#$%&*-~]|{nonascii}|{escape})*
	#range		\?{1,6}|{h}(\?{0,5}|{h}(\?{0,4}|{h}(\?{0,3}|{h}(\?{0,2}|{h}(\??|{h})))))

	$rx{ident}	= "$rx{nmstart}$rx{nmchar}*";
	$rx{name}	= "$rx{nmchar}+";
	$rx{num}	= '([0-9]+|[0-9]*\\.[0-9]+)';
	$rx{string}	= "($rx{string1}|$rx{string2})";
	$rx{url}	= "(([!#\$%&*-~]|$rx{nonascii}|$rx{escape})*)";
	$rx{range}	= "(\\?{1,6}|$rx{h}(\\?{0,5}|$rx{h}(\\?{0,4}|$rx{h}(\\?{0,3}|$rx{h}(\\?{0,2}|$rx{h}(\\??|$rx{h}))))))";


	#####################################################################################

	#[ \t\r\n\f]+		{return S;}
	#"<!--"			{return CDO;}
	#"-->"			{return CDC;}
	#"~="			{return INCLUDES;}
	#"|="			{return DASHMATCH;}
	#{string}		{return STRING;}
	#{ident}			{return IDENT;}
	#"#"{name}		{return HASH;}

	$self->add_toke_rule('S'		, "[ \t\r\n\f]+");
	$self->add_toke_rule('CDO'		, '<!--');
	$self->add_toke_rule('CDC'		, '-->');
	$self->add_toke_rule('INCLUDES'		, '~=');
	$self->add_toke_rule('DASHMATCH'	, '\\|=');
	$self->add_toke_rule('STRING'		, $rx{string});
	$self->add_toke_rule('IDENT'		, $rx{ident});
	$self->add_toke_rule('HASH'		, "#$rx{name}");


	#"@import"		{return IMPORT_SYM;}
	#"@page"			{return PAGE_SYM;}
	#"@media"		{return MEDIA_SYM;}
	#"@font-face"		{return FONT_FACE_SYM;}
	#"@charset"		{return CHARSET_SYM;}
	#"@"{ident}		{return ATKEYWORD;}
	#"!{w}important"		{return IMPORTANT_SYM;}

	$self->add_toke_rule('IMPORT_SYM'	, '@import');
	$self->add_toke_rule('PAGE_SYM'		, '@page');
	$self->add_toke_rule('MEDIA_SYM'	, '@media');
	$self->add_toke_rule('FONT_FACE_SYM'	, '@font-face');
	$self->add_toke_rule('CHARSET_SYM'	, '@charset');
	$self->add_toke_rule('ATKEYWORD'	, "\@$rx{ident}");	# this rule isn't in the lexer, as per the spec
	$self->add_toke_rule('IMPORTANT_SYM'	, "!$rx{w}important");


	#{num}em			{return EMS;}
	#{num}ex			{return EXS;}
	#{num}px			{return LENGTH;}
	#{num}cm			{return LENGTH;}
	#{num}mm			{return LENGTH;}
	#{num}in			{return LENGTH;}
	#{num}pt			{return LENGTH;}
	#{num}pc			{return LENGTH;}
	#{num}deg		{return ANGLE;}
	#{num}rad		{return ANGLE;}
	#{num}grad		{return ANGLE;}
	#{num}ms			{return TIME;}
	#{num}s			{return TIME;}
	#{num}Hz			{return FREQ;}
	#{num}kHz		{return FREQ;}
	#{num}{ident}		{return DIMEN;}
	#{num}%			{return PERCENTAGE;}
	#{num}			{return NUMBER;}

	$self->add_toke_rule('EMS'		, "$rx{num}em");
	$self->add_toke_rule('EXS'		, "$rx{num}ex");
	$self->add_toke_rule('LENGTH'		, "$rx{num}(px|cm|mm|in|pt|pc)");
	$self->add_toke_rule('ANGLE'		, "$rx{num}(deg|rad|grad)");
	$self->add_toke_rule('TIME'		, "$rx{num}(ms|s)");
	$self->add_toke_rule('FREQ'		, "$rx{num}(Hz|kHz)");
	$self->add_toke_rule('DIMEN'		, "$rx{num}$rx{ident}");
	$self->add_toke_rule('PERCENTAGE'	, "$rx{num}%");
	$self->add_toke_rule('NUMBER'		, "$rx{num}");


	#"url("{w}{string}{w}")"	{return URI;}
	#"url("{w}{url}{w}")"	{return URI;}
	#{ident}"("		{return FUNCTION;}

	$self->add_toke_rule('URI'		, "url\\($rx{w}($rx{string}|$rx{url}$rx{w})\\)");
	$self->add_toke_rule('FUNCTION'		, "$rx{ident}\\(");


	#####################################################################################

	$self->add_toke_rule('_BRACE_OPEN'	, '{');
	$self->add_toke_rule('_PLUS'		, '\\+');
	$self->add_toke_rule('_GREATER_THAN'	, '>');
	$self->add_toke_rule('_COMMA'		, ',');
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
	#  : [ CHARSET_SYM S* STRING S* ';' ]?
	#    [S|CDO|CDC]* [ import [S|CDO|CDC]* ]*
	#    [ [ ruleset | media | page | font_face ] [S|CDO|CDC]* ]*
	#  ;
	#import
	#  : IMPORT_SYM S*
	#    [STRING|URI] S* [ medium [ ',' S* medium]* ]? ';' S*
	#  ;
	#media
	#  : MEDIA_SYM S* medium [ ',' S* medium ]* '{' S* ruleset* '}' S*
	#  ;

	$self->add_lex_rule('stylesheet', '[ CHARSET_SYM S* STRING S* _SEMICOLON ]? [S|CDO|CDC]* [ import [S|CDO|CDC]* ]* [ [ ruleset | media | '.
		'page | font_face ] [S|CDO|CDC]* ]*');
	$self->add_lex_rule('import', 'IMPORT_SYM S* [STRING|URI] S* [ medium [ _COMMA S* medium]* ]? _SEMICOLON S*');
	$self->add_lex_rule('media', 'MEDIA_SYM S* medium [ _COMMA S* medium ]* _BRACE_OPEN S* ruleset* _BRACE_CLOSE S*');


	#medium
	#  : IDENT S*
	#  ;
	#page
	#  : PAGE_SYM S* IDENT? pseudo_page? S*
	#    '{' S* declaration [ ';' S* declaration ]* '}' S*
	#  ;
	#pseudo_page
	#  : ':' IDENT
	#  ;
	#font_face
	#  : FONT_FACE_SYM S*
	#    '{' S* declaration [ ';' S* declaration ]* '}' S*
	#  ;

	$self->add_lex_rule('medium', 'IDENT S*');
	$self->add_lex_rule('page', 'PAGE_SYM S* IDENT? pseudo_page? S* _BRACE_OPEN S* declaration [ _SEMICOLON S* declaration ]* _BRACE_CLOSE S*');
	$self->add_lex_rule('pseudo_page', '_COLON IDENT');
	$self->add_lex_rule('font_face', 'FONT_FACE_SYM S* _BRACE_OPEN S* declaration [ _SEMICOLON S* declaration ]* _BRACE_CLOSE S*');


	#operator
	#  : '/' S* | ',' S* | /* empty */
	#  ;
	#combinator
	#  : '+' S* | '>' S* | /* empty */
	#  ;
	#unary_operator
	#  : '-' | '+'
	#  ;
	#property
	#  : IDENT S*
	#  ;

	$self->add_lex_rule('operator', '_SLASH S* | _COMMA S* |');
	$self->add_lex_rule('combinator', '_PLUS S* | _GREATER_THAN S* |'); 
	$self->add_lex_rule('unary_operator', '_MINUS | _PLUS');
	$self->add_lex_rule('property', 'IDENT S*');


	#ruleset
	#  : selector [ ',' S* selector ]*
	#    '{' S* declaration [ ';' S* declaration ]* '}' S*
	#  ;
	#selector
	#  : simple_selector [ combinator simple_selector ]*
	#  ;
	#simple_selector
	#  : element_name? [ HASH | class | attrib | pseudo ]* S*
	#  ;
	#class
	#  : '.' IDENT
	#  ;

	$self->add_lex_rule('ruleset', 'selector [ _COMMA S* selector ]* _BRACE_OPEN S* declaration [ _SEMICOLON S* declaration ]* _BRACE_CLOSE S*');
	$self->add_lex_rule('selector', 'simple_selector [ combinator simple_selector ]*');
	$self->add_lex_rule('simple_selector', 'element_name? [ HASH | class | attrib | pseudo ]* S*');
	$self->add_lex_rule('class', '_PERIOD IDENT');


	#element_name
	#  : IDENT | '*'
	#  ;
	#attrib
	#  : '[' S* IDENT S* [ [ '=' | INCLUDES | DASHMATCH ] S*
	#    [ IDENT | STRING ] S* ]? ']'
	#  ;
	#pseudo
	#  : ':' [ IDENT | FUNCTION S* IDENT S* ')' ]
	#  ;
	#declaration
	#  : property ':' S* expr prio?
	#  | /* empty */
	#  ;

	$self->add_lex_rule('element_name', 'IDENT | _STAR');
	$self->add_lex_rule('attrib', '_SQUARE_OPEN S* IDENT S* [ [ _EQUALS | INCLUDES | DASHMATCH ] S* [ IDENT | STRING ] S* ]? _SQUARE_CLOSE');
	$self->add_lex_rule('pseudo', '_COLON [ IDENT | FUNCTION S* IDENT S* _ROUND_CLOSE ]');
	$self->add_lex_rule('declaration', 'property _COLON S* expr prio? |');


	#prio
	#  : IMPORTANT_SYM S*
	#  ;
	#expr
	#  : term [ operator term ]*
	#  ;
	#term
	#  : unary_operator?
	#    [ NUMBER S* | PERCENTAGE S* | LENGTH S* | EMS S* | EXS S* | ANGLE S* |
	#      TIME S* | FREQ S* | function ]
	#  | STRING S* | IDENT S* | URI S* | RGB S* | UNICODERANGE S* | hexcolor
	#  ;

	$self->add_lex_rule('prio', 'IMPORTANT_SYM S*');
	$self->add_lex_rule('expr', 'term [ operator term ]*');
	$self->add_lex_rule('term', 'unary_operator? [ NUMBER S* | PERCENTAGE S* | LENGTH S* | EMS S* | EXS S* | ANGLE S* | TIME S* | FREQ S* | function ] '.
		'| STRING S* | IDENT S* | URI S* | RGB S* | UNICODERANGE S* | hexcolor');


	#function
	#  : FUNCTION S* expr ')' S*
	#  ;
	#hexcolor
	#  : HASH S*
	#  ;

	$self->add_lex_rule('function', 'FUNCTION S* expr _ROUND_CLOSE S*');
	$self->add_lex_rule('hexcolor', 'HASH S*');


	#####################################################################################

	$self->set_base('stylesheet');
}

sub toke {
	my ($self, $input) = @_;

	# strip comments first
	$input =~ s!/\*[^*]*\*+([^/*][^*]*\*+)*/!!g;

	$self->SUPER::toke($input);
}

1;
