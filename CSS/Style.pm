package CSS::Style;

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
  my $options = shift;
  my $self = bless {}, $class;

  $self->debug    ($$options{-debug}     or 0);
  $self->adaptor  ($$options{-adaptor}   or 'Default');
  return $self;
}

sub adaptor {
  my $self = shift;
  my $option = shift;
  return $self->{adaptor} unless $option;

  $self->{adaptor} = $option and return 1
    if (ref($option) =~ /CSS::Adaptor/);

  my $adaptorclass = "CSS::Adaptor::$option";
  croak "Can't find adaptor $adaptorclass: $!" unless 
    (eval "require $adaptorclass");

  $self->{adaptor} = $adaptorclass->new() and return 1;

  croak "Couldn't create adaptor $adaptorclass: $!";
}

sub debug {
  my $self = shift;
  my $option = shift;
  return $self->{debug} unless defined $option;
  $self->{debug} = $option;
}

sub convert    { return shift->adaptor->convert(shift); }
sub converts   { return shift->property('___convert___',@_); }
sub properties { return shift->property(@_); }

sub property {

  my $self    = shift;
  my $convert = @_ ? ($_[0] eq '___convert___') ? shift : 0 : 0;

  #if it's an even number of properties, assume they are passing in
  #key/value pairs.  this is not failsafe.
  if((@_ / 2) == (int(@_ / 2))){ #test for odd number
    my %options = @_;

    unless(%options){ #asking for all properties
      my %h = %{$self->{property}}; #probably better to do a hash

      my %return;
      if($convert){
	foreach my $h (keys %h) {
	  $return{$self->adaptor->convert($h)} = $h{$h};
	}
      } else {
	%return = %h;
      }
      return %return;
    }

    #now set the properties
    foreach my $o (keys %options){
      $self->{property}->{$o} = $options{$o};
    }
  } elsif(scalar @_ != 1){
    croak "property() method can only retrieve one value per call";
  } else {
    my $option = shift;
    return $self->{property}->{$option};
  }
}

sub purge { #purge at the property level;
  my $self = shift;
  my $option = shift;
  my @option = ref $option eq 'ARRAY' ? @$option : $option;

  foreach my $o (@option){
    delete $self->{property}->{$o};
  }
}

sub selector {
  my $self = shift;
  my $option = shift;
  return $self->{selector} unless defined $option;
  croak "not a scalar name: $!" if ref $option;

  $self->{selector} = $option;
}

sub toString {
  my $self = shift;
  return $self->selector;
}
1;
