package CSS::Adaptor::DasXMLStylesheet;

use strict;
use vars qw($VERSION @ISA);
$VERSION = '0.01';
@ISA = 'CSS::Adaptor';

sub convert {
  my $self = shift;
  my $tag  = shift;

  my %mapped = ('color'            => 'fgcolor',
                'background-color' => 'fillcolor',
               );

  #no mapping needed (or at least not defined)
  return $tag unless $mapped{$tag};
  return $mapped{$tag};
}

1;
