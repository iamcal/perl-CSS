package CSS;

use strict;
use warnings;
use vars qw($VERSION);
use vars qw($VERSION);
$VERSION = 0.07;

use lib '..';
use Carp qw(croak confess);
use Parse::RecDescent;
   $Parse::RecDescent::skip = '[ \t\n]*';
use CSS::Style;
use CSS::Adaptor;

sub new {
  my $class = shift;
  my %options = @_;
  my $self = bless {},$class;
  
  $self->debug   ($options{-debug}   || 0);
  $self->adaptor ($options{-adaptor} || 'Default');
  $self->add_file($options{-source}  || die "please provide a -source file");

  return $self;
}

sub adaptor {  #not a real adaptor, just a scalar for style to create adaptor objects
  my $self = shift;
  my $option = shift;
  return $self->{adaptor} unless $option;

  $self->{adaptor} = $option;
}

sub add_file {
  my $self = shift;
  my $option = shift;

  if(ref $option){
    if (ref $option eq 'ARRAY'){
      foreach my $o (@$option){
        $self->_parse($o);
      }
    } else {
      croak "only scalars and arrays accepted: $!";
    }
  } else {
    $self->_parse($option) if $option;
  }
}

sub debug {
  my $self = shift;
  my $option = shift;
  return $self->{debug} unless $option;
  $self->{debug} = $option;
}

sub purge {  #purge at the selector level
  my $self = shift;
  my $option = shift;
  return unless $option;

  my @option = ref $option eq 'ARRAY' ? @$option : $option;
  foreach my $o (@option){
    delete $self->{style}->{$o};
  }
}

sub styles { return shift->style() }
sub style {
  my $self = shift;
  my $option = shift;
  return (values %{$self->{style}}) unless $option;

  my @return;
  my @option = ref $option eq 'ARRAY' ? @$option : $option;
  foreach my $o (@option){
    if(ref $o eq 'CSS::Style'){
      $self->{style}->{$o} = $o;
    } else {
      push @return, $self->{style}->{$o};
    }
  }

  return $#return > 1 ? @return : $return[0];
}

sub _parse {
  my $self = shift;
  my $option = shift;

  open (IN,$option) or croak "couldn't open file: $!";
  my $source = join '',<IN>;
  close(IN);


  $source =~ s/<!--.+?-->//gs; #remove comments
  $source =~ s!/\*.+?\*/!!gs;  #remove comments

my $parser = new Parse::RecDescent <<'EOPARSER';
  sheet:        statement(s)
  statement:    selector '{' declaration(s?) '}' {push @$return, $style}
  statement:    <rulevar: local $style = new CSS::Style>
  declaration:  property ':' value ';'
  declaration:  <rulevar: local $property>
  selector:     /\S+/                      {$style->selector($item{__PATTERN1__})}
  property:     /[^:{}]+/                  {$property = $item{__PATTERN1__}}
  value:        /'?[^;{}]+'?/          {$style->property($property => $item{__PATTERN1__})}
EOPARSER

  my $a = $parser->sheet($source);

  foreach my $b (@$a){
    foreach my $s (@$b){
      $s->adaptor($self->adaptor);
      $s->debug($self->debug);
      $self->style($s);
    }
  }
}

1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

CSS - Perl Object oriented access to Cascading Style Sheets (CSS)

=head1 SYNOPSIS

  use CSS;
  ...

=head1 DESCRIPTION

CSS.pm is able to parse a CSS file, and provide the user with an object
oriented interface to the CSS file on 3 levels:

 1)the stylesheet as a whole
    my $stylesheet = CSS->new(-source=>"myfile.css");

 2)the selector elements and their associated properties
    my @styles = $stylesheet->styles;
    my %properties = $styles[0]->properties;

 3)the properties and associated values
    my $value = $properties{'some_property'}

In addition, levels 2) and 3) are able to transform the properties
returned by using an Adaptor class (see below).  This is useful, for 
instance, if you need the property 'background-color' to be called just
that in your stylesheet, but it should be known as 'BGCOLOR' in another
context (an HTML generator, perhaps?).

=head1 METHODS

=head2 CONSTRUCTOR

Only one constructor: new().  Called with:
 -source	required	the source CSS file
 -adaptor	optional	used for transforming properties

=head2 ACCESSORS

 adaptor( scalar )
  read/write.  view/set the adaptor to be used for CSS::Style object 
  creation

 add_file(filename or list of filenames) 
   write only.  add selectors from another stylesheet.

 purge( scalar )
   write only.  deletes a selector object.

 style() or styles()
   read only.  returns a list of CSS::Style objects corresponding to
   the current selectors associated with the CSS object.

=head1 AUTHOR

Allen Day <allenday@ucla.edu>
Copyright (c) 2001-2002

=head1 SEE ALSO

CSS::Style
CSS::Adaptor
perl(1).

=cut
