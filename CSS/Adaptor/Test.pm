package CSS::Adaptor::Test;

use strict;
use vars qw($VERSION @ISA);
$VERSION = '0.05';
@ISA = 'CSS::Adaptor';

sub name { return "Test" }

sub convert {
  my $self = shift;
  my $tag  = shift;

  my %map = (
	     'glyph'            => 'symbol',
	     'background-color' => 'fillcolor',
	     'color'            => 'fgcolor',
	     
            );

  return "-$tag" unless $map{$tag};
  return "-".$map{$tag};
}

1;
