package CSS::Adaptor::default;

use strict;
use vars qw($VERSION @ISA);
$VERSION = '0.01';
@ISA = 'CSS::Adaptor';

sub convert {
  my $self = shift;
  my $tag  = shift;

  return $tag;
}

1;
