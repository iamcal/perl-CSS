package CSS::Selector;

use strict;
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

  my $tag     = $options{-tag} or croak "-tag needs to be defined";
  my $attribs = $options{-attribs};

  $self->name($tag);

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

sub attribute {
  my $self = shift;
  my $tag  = shift || return undef;

  return $self->source($tag);
}

sub attributes {
  my $self = shift;
  my %options = @_;

  return $self->source unless %options;

  $self->source(%options);

  return 1;
}

sub debug {
  return shift->{debug};
}

1;

=head1 NAME

CSS::Style - a Perl object oriented interface to the markup attributes
associated with a CSS Style class.

=head1 SYNOPSIS

 use CSS::Style;
 my $style = CSS::Style->new(
           -source  => '/path/to/some.css',
           -adaptor => 'AceGraphics');

 my @styles  = $css->styles;
 my $tag     = @styles[0];
 my %markups = %{$css->style($tag)};

=head1 DESCRIPTION

CSS is an object-oriented Perl interface to Cascading Style Sheets (CSS).  
Minimally created with a CSS file, it will parse the file and return an 
object with methods for accessing and editing the tags extracted from the 
stylesheet as CSS objects.  Methods are also provided to delete and add 
Style objects to those maintained by the CSS object.

This module does not depend on any non-standard perl modules.

=head1 METHODS

This section describes the class and object methods for a CSS object.

=head2 CONSTRUCTORS

There is only one constructor, the new() method.

=item $css = CSS->new(@options)

The new() method creates a new panel object.  The options are
a set of tag/value pairs as follows:

  Option      Value                                  Default
  ------      -----                                  -------

  -source     path to stylesheet file to be parsed.  none

  -adaptor    Adaptor to be used in creation of      default
              Styles.

  -debug      when true, debugging messages are      false
	      sent to STDERR.

new() will thow an exception if the -source tag is undefined.

=head2 ACCESSORS

The following accessor methods provide access to various attributes of
the CSS  object.  Called with no arguments, they each return the current 
value of the attribute.  Called with a single argument, they set the 
attribute and return its previous value.

   Accessor Name      Description
   ---------------    -----------

   adaptor()	      Get/set the global Style adaptor
   debug()	      Get/set debug mode
   source()	      Get/set the source
   style(),tag()      Get/set the attributes of a Style
   styles(),tags()    Get a list of all Styles
   purge()            Remove a Style

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

