package CSS::Style;

use strict;
use warnings;
use vars qw($VERSION);
$VERSION = 0.07;

use lib '../../';
use Carp qw(croak confess);
use overload '""' => 'toString';
use CSS::Adaptor;

sub new {
  my $class = shift;
  my %options = @_;
  my $self = bless {}, $class;

  $self->debug    ($options{-debug}     or 0);
  $self->adaptor  ($options{-adaptor}   or 'Default');
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

sub add { return shift->edit_property(@_) }
sub edit {
  my $self = shift;
  my $option = shift;
  my $value = shift;
  return undef unless $option && $value;
  $self->{property}->{$option} = $value;
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

__END__

=head1 NAME

CSS::Style - Represents a selector section of a CSS document

=head1 SYNOPSIS

  use CSS;
  ...

=head1 DESCRIPTION

Maybe it should be called I<CSS::Selector>, but I thought that was a
lousy name.

This class represents a selector from a CSS object.

=head1 METHODS

 adaptor()
  read/write.  view/change the adaptor used by convert() and converts().

 property( scalar )
  returns a hash of the property and its value

 properties()
  returns a hash of all properties and values of the Style object

 convert()
  like property(), except the property tag is converted by adaptor()

 converts()
  like properties(), except the property tags are converted by adaptor()

 add( property, value)
  see edit().

 edit( property, value)
  write only.  add a property to the Style object.

 purge( scalar )
  write-only.  drop a property from the Style object.

 selector( scalar )
  read/write.  view/change the name of the selector.

=head2 CONSTRUCTOR

 Only one constructor: new().  Called with:
  -adaptor	optional	used for transforming properties

=head1 AUTHORS

Copyright (C) 2001-2002 Allen Day <allenday@ucla.edu>

Copyright (C) 2003 Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

CSS

CSS::Adaptor

perl(1).

=cut
