package CSS::Adaptor;

use strict;
use vars qw($VERSION);
$VERSION = '0.01';
use Carp 'croak';

sub new {
  my $class   = shift;
  my $self = bless {},$class;

  return $self;
}

sub convert { croak "not implemented"; }
1;
