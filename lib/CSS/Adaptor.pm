package CSS::Adaptor;

use strict;
use warnings;

sub new {
	my ($class) = @_;
	my $self = bless {}, $class;

	return $self;
}

sub format_stylesheet {
	my ($self, $stylesheet) = @_;

	my @blobs;

	for (@{$stylesheet->{items}}){

		push @blobs, $self->format_atrule($_) if ref $_ eq 'CSS::AtRule';
		push @blobs, $self->format_ruleset($_) if ref $_ eq 'CSS::Ruleset';
	}

	return join "", @blobs;
}

sub format_atrule {
	my ($self, $atrule) = @_;

	return "\@$atrule->{name} $atrule->{value};\n";
}

sub format_ruleset {
	my ($self, $ruleset) = @_;

	my $selectors		= join ', ', map {$self->format_selector($_)} @{$ruleset->{selectors}};
	my $declarations	= join '; ', map {$self->format_declaration($_)} @{$ruleset->{declarations}};

	return $selectors.' { '.$declarations." }\n" ;
}

sub format_selector {
	my ($self, $selector) = @_;

	return $selector->{name};
}

sub format_declaration {
	my ($self, $declaration) = @_;

	my $val = $declaration->{simple_value};
	$val =~ s/^\s*(.*?)\s*$/$1/;

	my $prop = $declaration->{property};
	$prop =~ s/^\s*(.*?)\s*$/$1/;

	return "$prop: $val";
}

1;

__END__

=head1 NAME

CSS::Adaptor - Arbitrarily map CSS data for use in another context.

=head1 SYNOPSIS

  use CSS;

  # create a CSS object with an adaptor
  my $css = new CSS({
       'adaptor' => 'CSS::Adaptor',
  });


  # load some CSS data
  $css->read_file( "my_file.css" );


  # change the adaptor
  $css->set_adaptor( "CSS::Adaptor::Pretty" );


  # output CSS object using the current adaptor
  print $css->output();
  

=head1 DESCRIPTION

This class is used to translate C<CSS> objects to strings. This allows 
CSS data to be easily mapped into other formats.

The C<CSS::Adaptor> class provides a handful of overrideable methods for
creating your own adaptor subclass. See C<CSS::Adaptor::Pretty> and 
C<CSS::Adaptor::Debug> for subclassing examples.

=head1 METHODS

=over 4

=item C<new()>

This constructor returns a new C<CSS::Adaptor> object - no options are supported.

=item C<format_stylesheet( $stylesheet )>

Returns a string representation of the stylehseet in C<$stylesheet>. This
is the only external formatting entrypoint used by the C<CSS> class - this
method then dispatches to C<format_atrule()> and C<format_ruleset()> where 
appropriate.

=item C<format_atrule( $atrule )>

Returns a string representation of the at-rule in C<$atrule>.

=item C<format_ruleset( $ruleset )>

Returns a string representation of the ruleset in C<$ruleset>. This
method dispatches to C<format_selector()> and C<format_declaration()> 
where approppriate.

=item C<format_selector( $selector )>

Returns a string representation of the selector in C<$selector>.

=item C<format_declaration( $declaration )>

Returns a string representation of the declaration in C<$declaration>.

=back

=head1 AUTHORS

Copyright (C) 2001-2002, Allen Day <allenday@ucla.edu>

Copyright (C) 2003-2006, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>,
L<CSS::Adaptor::Pretty>,
L<CSS::Adaptor::Debug>

=cut
