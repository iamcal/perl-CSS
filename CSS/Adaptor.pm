package CSS::Adaptor;

use strict;
use Carp 'croak';

sub new {
  my $class   = shift;
  my $self = bless {},$class;

  return $self;
}

sub convert { croak "not implemented"; }
1;
