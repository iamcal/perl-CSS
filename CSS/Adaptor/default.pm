package CSS::Adaptor::default;

use strict;
use vars '@ISA';
@ISA = 'CSS::Adaptor';

sub convert {
  my $self = shift;
  my $tag  = shift;

  return $tag;
}

1;
