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
