package CSS::Selector;

use strict;
use vars qw($VERSION);
$VERSION = '0.05';
use Carp qw(croak confess);
use CSS::Adaptor;

use overload '""' => 'toString';

sub new {
  my $class   = shift;
  my %options = @_;

  my $self    = bless {},$class;
  my $debug   = $options{-debug} || 0;
  $self->{debug} = $debug;
  my $adaptor = $options{-adaptor} || 'default';

  $self->{source} = {};

  my $name     = $options{-name} or croak "-name needs to be defined";
  my $attribs = $options{-attribs};

  $self->name($name);

  foreach my $a (@$attribs){
#    $self->source->{$self->adaptor->convert(@$a[0])} = @$a[1];
    $self->source->{@$a[0]} = @$a[1];
  }

  return $self;
}

sub toString {
  my $self = shift;
  return $self->name;
}

sub adaptor {
  my $self = shift;
  my $option = shift;
  return $self->{adaptor} unless $option;

  #not sure this is the correct syntax...
  die "$option doesn't exist" unless eval {require "CSS::Adaptor::$option"};

  $self->{adaptor} = $option;
  return $option;
}

sub tag {
  my $self = shift;
  return $self->name(@_);
}

sub name {
  my $self = shift;
  my $option = shift;
  return $self->{name} unless $option;
  die "not a scalar name" if ref($option);
  $self->{name}  = $option;
  return $option;
}

sub source {
  my $self = shift;
  my %options = @_;
  return $self->{source} unless %options;

  $self->{source}->{$_} = $options{$_} foreach keys %options;
  return 1;
}

sub value {
  my $self = shift;
  my $tag  = shift || return undef;

  return $self->{source}->{$tag};
}

#due to indecision, we have aliases!
sub property   { return shift->attribute(@_);  }
sub properties { return shift->attributes(@_); }

sub attribute {
  my $self  = shift;
  my $tag   = shift || return undef;
  my $value = shift;

  return $self->source($tag) unless $value;
  $self->{source}->{$tag} = $value;
  return $value;
}

sub attributes {
  my $self = shift;
  my %options = @_;

#  return $self->source unless %options;
  return keys %{$self->source} unless %options;

  $self->source(%options);

  return 1;
}

sub debug {
  return shift->{debug};
}

1;

=head1 NAME

CSS::Selector - a Perl object oriented interface to the markup properties
associated with a CSS Selector class.

=head1 SYNOPSIS

 use CSS::Selector;
 my $style = CSS::Selector->new(
           -source  => '/path/to/some.css',
           -adaptor => 'AceGraphics');

 my @styles  = $css->styles;
 my $tag     = @styles[0];
 my %markups = %{$css->style($tag)};

=head1 DESCRIPTION

CSS::Selector is intended to be accessed via a CSS object.  It is a class to
represent CSS selectors (duh!).

=head1 METHODS

This section describes the class and object methods for a CSS::Selector object.

=head2 CONSTRUCTORS

There is only one constructor, the new() method.

=item $style = CSS::Selector->new(@options)

The new() method creates a new Selector object.  The options are
a set of property/value pairs as follows:

  Option      Value                                  Default
  ------      -----                                  -------

  -adaptor    adaptor to be used to translate the    default
              CSS properties.

  -source     path to stylesheet file to be parsed.  none

  -debug      when true, debugging messages are      false
	      sent to STDERR.

new() will thow an exception if the -name tag is undefined.

=head2 ACCESSORS

The following accessor methods provide access to various attributes of
the CSS  object.  Called with no arguments, they each return the current 
value of the attribute.  Called with a single argument, they set the 
attribute and return its previous value.

   Accessor Name              Description
   ---------------            -----------
   debug()	              Get/set debug mode
   source()	              Get/set the source
   name(),tag()               Get/set the attributes of a Selector
   value()                    Get the value of a Selector property
   properties(),attributes()  List the attributes of a Selector

=head1 BUGS

Please report them.

=head1 SEE ALSO

L<CSS>, L<CSS::Adaptor>

=head1 AUTHOR

Allen Day <day@cshl.org>

Copyright (c) 2001 Cold Spring Harbor Laboratory

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  See DISCLAIMER.txt for
disclaimers of warranty.

=cut

