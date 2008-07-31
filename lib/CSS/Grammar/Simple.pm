package CSS::Grammar::Simple;

use strict;
use warnings;

use base 'CSS::Grammar';

sub init {
	my ($self) = @_;

	$self->{case_insensitive} = 1;

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
	
1;

