package CSS::Adaptor::Default;

use strict;
use vars qw($VERSION @ISA);
$VERSION = '0.05';
@ISA = 'CSS::Adaptor';

sub name { return "Default" }

sub convert {
  my $self = shift;
  my $tag  = shift;

  return $tag;
}

1;
