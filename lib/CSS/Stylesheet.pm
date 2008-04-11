package CSS::Stylesheet;

use strict;
use warnings;

sub new {
	my ($class) = @_;
	my $self = bless {}, $class;

	$self->{rulesets} = [];
	$self->{atrules} = [];
	$self->{items} = [];

	return $self;
}

1;