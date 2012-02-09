package CSS;

use strict;
use warnings;

our $VERSION = 2.01_07;

sub new {
	my $class = shift;
	my $self = bless {}, $class;

	my %opts = (ref $_[0]) ? ((ref $_[0] eq 'HASH') ? %{$_[0]} : () ) : @_;

	$self->{atrules}  = [];
	$self->{rulesets} = [];
	$self->{items}    = [];
	$self->{sheets}   = [];

	# 1.x compatability
	$self->{styles} = $self->{rulesets};

	$self->{grammar} = $opts{grammar} || 'CSS::Grammar::Core';
	$self->{adaptor} = $opts{adaptor} || 'CSS::Adaptor';

	return $self;
}

sub read_file {
	my ($self, $path) = @_;

	if (ref $path){
		if (ref $path eq 'ARRAY'){
			$self->read_file($_) for @$path;
			return;
		}
	} else {
 		if ($path){
			local *IN;
 			open(IN, $path) or die "Couldn't open file: $!";
			my $source = join '',<IN>;
			close(IN);
			$self->parse_string($source) if $source;
			return;
		}
	}
	die "Only scalars and arrays accepted: $!";
}

sub read_string {
	my ($self, $data) = @_;

	if (ref $data){
		if (ref $data eq 'ARRAY'){
			$self->read_string($_) for @$data;
			return;
		}
	} else {
		return $self->parse_string($data) if length $data;
	}
}

sub parse_string {
	my ($self, $string) = @_;

	my $grammar_class = $self->{grammar};
	return 0 unless $grammar_class;

	$self->load_module($grammar_class);
        my $grammar = eval "new $grammar_class";
	return 0 unless $grammar;

	#
	# toke, lex, reduce & walk into a sheet
	#

	my $sheet = $grammar->parse($string);

	unless (defined $sheet){

		die "Can't walk the match tree";
		return 0;
	}

	if ($grammar->{error}){

		die "Failed grammar parse: ".$grammar->{error};
		return 0;
	}


	#
	# merge the resultant sheet with the CSS object
	#

	$self->merge_sheet($sheet);

	return 1;
}

sub purge {
	my ($self) = @_;

	$self->{atrules}  = [];
	$self->{rulesets} = [];
	$self->{items}    = [];
	$self->{sheets}   = [];

	# 1.x compatability
	$self->{styles} = $self->{rulesets};
}

sub set_adaptor {
	my $self = shift;
	my $adaptor = shift;

	$self->{adaptor} = $adaptor;
}

sub output {
	my $self = shift;
	my $adaptor_class = shift || $self->{adaptor};

	unless ($adaptor_class){
		die "no adaptor class";
	}

	unless ($self->load_module($adaptor_class)){
		die "unable to load adaptor module";
	}

	my $adaptor = eval "$adaptor_class->new();";

	unless (defined $adaptor){
		die "can't create adaptor ($adaptor_class)";
	}

	unless ($adaptor->can('format_stylesheet')){
		die "adaptor can't format stylesheets";
	}

	return $adaptor->format_stylesheet($self);
}

sub get_style_by_selector {

	return get_ruleset_by_selector(@_);
}

sub get_ruleset_by_selector {
	my ($self, $sel_name) = @_;

	for my $ruleset (@{$self->{rulesets}}){

		return $ruleset if $ruleset->match_selector($sel_name);
	}

	return undef;
}

sub merge_sheet {
	my ($self, $stylesheet) = @_;

	for my $item (@{$stylesheet->{items}}){

		push @{$self->{items}}, $item;
		push @{$self->{atrules}}, $item if ref $item eq 'CSS::AtRule';
		push @{$self->{rulesets}}, $item if ref $item eq 'CSS::Ruleset';
	}

	push @{$self->{sheets}}, $stylesheet;
}

sub load_module {
	my ($self, $module) = @_;

	my $file = "$module" . '.pm';
	$file =~ s{::}{/}g;

	return eval { 1 } if $INC{$file};
	my $ret = eval "require \$file";
	return 0 unless $ret;

	eval "\$module->import();";
	return 1;
}

1;

__END__

=head1 NAME

CSS - A CSS parser

=head1 SYNOPSIS

  use CSS;

  # create a CSS object with the default options
  my $css = CSS->new();

  # create a CSS object with custom options
  my $css = CSS->new(
  	grammar => 'CSS::Grammar::CSS21',
  	adaptor => 'CSS::Adaptor::Pretty',
  );



  # parse some CSS from a string
  $css->read_string( $css_data );
  $css->read_string( ( $css_data, $more_css_data ) );

  # parse some CSS from a file
  $css->read_file( 'my_file.css' );
  $css->read_file( ( 'my_file.css', 'my_other_file.css' ) );



  # output the CSS using the current adaptor
  print $css->output();

  # set a new adaptor and then output the CSS
  $css->set_adaptor( 'CSS::Adaptor::Foo' );
  print $css->output();

  # output the CSS using a tempory adaptor
  print $css->output( 'CSS::Adaptor::Bar' );



  # forget about the CSS we've already parsed
  $css->purge();

=head1 DESCRIPTION

...

=head1 NOTICE

There are three major versions of this module - 0.X, 1.X and 2.X. All three
versions are incompatible in various exciting ways. The 1.X series completely
abandons backward compatibility with previous versions to allow the 
representation of the style sheet as a tree of objects. The 0.X series is still 
available on CPAN - the latest release is 0.08:

L<http://search.cpan.org/dist/CSS-0.08/>

The 2.X series is not fully backward compatible with the 1.X series; though
in most cases code built against a 1.X version will continue to work fine 
(renamed methods and properties are redirected correctly). In version 2.X 
the concept of a 'parser' class has been thrown away, so calls to set the
parser are no-ops and won't fail. However, the classes that make up the tree 
have been renamed inline with the CSS specification, so tree walking code 
may be broken by this change. The 1.X series is still available on CPAN - 
the latest release is 1.09:

L<http://search.cpan.org/dist/CSS-1.09/>

=head1 TREE STRUCTURE

After parsing, the C<CSS> object contains one or more C<CSS::Stylesheet>
objects (details of accessing these objects is below), each of which 
represents a chunk of parsed CSS data and the top of a parse tree.
Each C<CSS::Stylesheet> object contains a list of 'items', which are a 
mix of C<CSS::AtRule> and C<CSS::Ruleset> objects. The C<CSS::Ruleset>
objects then contain a list of C<CSS::Selector> and C<CSS::Declaration>
objects.

  @import url(more.css);

  foo, bar {
      baz: fop;
      woo: yay houpla;
  }

The above example would be parsed into a single C<CSS::Stylesheet>
object, which contained a list of one C<CSS::AtRule> object (representing 
the '@import' line) and one C<CSS::Ruleset> object (for the other lines).
The C<CSS::Ruleset> object would contain two C<CSS::Selector> objects 
(one each for 'foo' and 'bar') and two C<CSS::Declaration> objects
(one each for 'baz' and 'woo').

=head1 METHODS

=over

=item C<new( option => $value )>

This constructor returns ...

=back

=head1 INTERNALS

=over

=item C<$css-E<gt>{foo}>

...

=back

=head1 AUTHORS

Copyright (C) 2001-2002, Allen Day <allenday@ucla.edu>

Copyright (C) 2003-2010, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS::AtRule>,
L<CSS::Declaration>,
L<CSS::Grammar>,
L<CSS::Ruleset>,
L<CSS::Selector>,
L<CSS::Stylesheet>,
L<CSS::Grammar::Core>,
L<CSS::Grammar::CSS10>,
L<CSS::Grammar::CSS20>,
L<CSS::Grammar::CSS21>,
L<CSS::Grammar::CSS30>,
L<CSS::Grammar::Simple>,
L<CSS::Parse::Rule>,
L<CSS::Parse::Op>,
L<CSS::Parse::Match>,
L<CSS::Parse::Rule::Trace>,

Source repo: https://github.com/iamcal/perl-CSS

=cut
