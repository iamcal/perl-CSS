package CSS;

use strict;
use vars qw($VERSION);
$VERSION = '0.02';

use strict;
use lib './';
use Carp qw(croak confess);
use CSS::Selector;

sub new {
  my $class = shift;
  my %options = @_;
  
  my $self = bless {},$class;
  my $debug   = $options{-debug}  || 0;
  my $cssfile = $options{-source} || './default.css';
  $self->{debug}  = $debug;

  #create the adaptor handle
  my $adaptor      = $options{-adaptor} || 'default';
  $self->adaptor($adaptor);

  $self->{source} = {};
  $self->add_sheet($cssfile);

  return $self;
}

sub add_sheet {
  my $self    = shift;
  my $cssfile = shift  || return undef;
  $self->_parse($cssfile);
}

sub adaptor {
  my $self    = shift;
  my $adaptor = shift;

  if($adaptor){
    my $adaptorclass = "CSS::Adaptor::$adaptor";
    confess("the requested Adaptor class, '$adaptor' is not available: $@")
      unless(eval "require $adaptorclass");

    $self->{adaptor} = $adaptorclass->new() and return $self->{adaptor};
  }
  return $self->{adaptor};
}

sub debug {
  my $self  = shift;
  my $param = shift;
  $self->{debug} = $param;
  return $self->{debug};
}

sub source {
  my $self = shift;
  scalar @_ == 1 ? return $self->{source}->{@_[0]} : 0;
  my %options  = @_;
  return $self->{source} unless %options;
  $self->{source}->{$_} = $options{$_} foreach keys %options;
  return 1;
}

sub style {
  my $self = shift;
  my $tag  = shift;

  my %k = ();

  return \%k unless $self->source($tag);

  foreach my $k (keys %{$self->source($tag)->attributes}){
    $k{$self->adaptor->convert($k)} = $self->source($tag)->value($k);
  }

  return \%k || undef;
}

sub styles {
  my $self = shift;
  my @tags = ();
  foreach my $tag (keys %{$self->{source}}){
#    push @tags, $self->adaptor->convert($tag);
    push @tags, $self->source($tag);
  }

  return @tags;
#  return keys %{shift->{source}};
}

sub purge {
  my $self = shift;
  my $param = shift;
  return 0 unless $param;
  undef $self->{source}->{$param};
  return 1;
}

sub tag  { return shift->style(shift);}
sub tags { return shift->styles(shift);}

sub _parse {
  my $self = shift;
  my $file = shift;

  open (IN,$file) or croak "$!";
  #my $source = undef;
  my $source = join '', <IN>;
  close(IN);

  $source =~ s!/\*.+?\*/!!gs;
  while($source =~ m/([\w\.].+?)\{(.+?)\}\s*/gs){

    my $attrib = $2;
    my $t = $1; 
       $t =~ s/\s//gs;
       $t =~ s/(\S)\s(\S)/$1,$2/gs;

    my @tags;
    if($t =~ /,/){
      @tags = split /,/, $t;
    } else {
      push @tags, $t;
    }

    foreach my $tag (@tags){
      #protect escaped spaces
      $attrib =~ s/\\ /\\_/gs;

      print "$tag\n" if $self->debug;
      my @attribs = split /;/, $attrib;
      pop @attribs if @attribs[$#attribs] eq '';

      my %attribs = ();
      foreach my $a (@attribs){
        print "\t$a\n" if $self->debug;
        $a =~ s/[\s'"]//gs;
        $a =~ s/\\_/ /gs;
        $a =~ m/(.+)\:(.+)/;
        push @{$attribs{$tag}}, [$1,$2] if($1 and $2); #parse error test
      }    

      my $style = CSS::Selector->new(
                                  -tag=>$tag,
                                  -attribs=>$attribs{$tag},
                                  -debug=>1,
                                  );


      croak "Style.pm did not return an object" unless $style;

      #someone defined a tag multiple times.  We just merge
      #the definitions

      if($self->source($tag)){
        $self->source($tag)->source($_->[0] => $_->[1]) 
          foreach @{$attribs{$tag}};
      } else {
        $self->source($tag=>$style);
      }
    }
  }
}

1;

=head1 NAME

CSS - an Perl object oriented interface to Cascading Style Sheets (CSS)

=head1 SYNOPSIS

 use CSS;
 my $css = CSS->new(
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

L<CSS::Style>, L<CSS::Adaptor>

=head1 AUTHOR

Allen Day <day@cshl.org>

Copyright (c) 2001 Cold Spring Harbor Laboratory

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.  See DISCLAIMER.txt for
disclaimers of warranty.

=cut
