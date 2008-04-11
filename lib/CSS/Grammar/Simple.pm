package CSS::Grammar::Simple;

use strict;
use warnings;

use base 'CSS::Grammar';

sub init {
	my ($self) = @_;

	$self->{case_insensitive} = 1;

if (0){
	$self->add_toke_rule('A', "a");
	$self->add_toke_rule('B', 'b');
	$self->add_toke_rule('C', 'c');
	$self->add_toke_rule('D', 'd');
	$self->add_toke_rule('E', 'e');
	$self->add_toke_rule('F', 'f');
	$self->add_toke_rule('G', 'g');
	$self->add_toke_rule('H', 'h');
	$self->add_toke_rule('I', 'i');

	$self->add_lex_rule('base', 'A pair+');
	$self->add_lex_rule('pair', 'B C');

	$self->set_base('base');
}

if (1){
	$self->add_toke_rule('IDENT', '[a-z]+');	
	$self->add_toke_rule('_STAR', '\\*');
	$self->add_toke_rule('_PLUS', '\\+');
	$self->add_toke_rule('_GREATER', '>');
	$self->add_toke_rule('S', "[ \t\r\n\f]+");

	$self->add_lex_rule('selector', 'simple_selector [ combinator simple_selector ]*');
	$self->add_lex_rule('simple_selector', 'element_name? S*');
	$self->add_lex_rule('element_name', 'IDENT | _STAR');
	$self->add_lex_rule('combinator', '_PLUS S* | _GREATER S* |'); 

	$self->set_base('selector');
}

}
	
1;

