package CSS::Selector;

use strict;
use warnings;

sub new {
	my ($class, $name) = @_;
	my $self = bless {}, $class;

	$self->{name} = $name;

	return $self;
}

1;