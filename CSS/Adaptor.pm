package CSS::Adaptor;

use strict;
use warnings;
use vars qw($VERSION);
$VERSION = 0.05;

use lib '../../';
use Carp qw(croak confess);
use overload '""' => 'toString';
use CSS::Adaptor;

sub new {
  my $class = shift;
  my $self = bless {}, $class;

  return $self;
}

sub convert {
  croak "no adaptor! $!";
}

sub name {
  my $self = shift;
  return "a_name";
}

sub toString {
  my $self = shift;
  return $self->name;
}

1;

__END__

=head1 NAME

CSS::Adaptor - Arbitrarily map CSS property names for use in another context.

=head1 SYNOPSIS

  use CSS::Adaptor;
  ...

=head1 DESCRIPTION

This class keeps track of how to transform a I<parameter property> to a I<return
value>.  It happens in the convert() method.

=head1 METHODS

=head2 CONSTRUCTOR

Only one constructor: new().  Called without options.

=head2 ACCESSORS

name()    read-only. returns the name of the Adaptor.
convert() read-only. returns the conversion of a passed in parameter.

=head1 AUTHOR

Allen Day <allenday@ucla.edu>
Copyright (c) 2001-2002

=head1 SEE ALSO

CSS
CSS::Style
perl(1).

=cut
