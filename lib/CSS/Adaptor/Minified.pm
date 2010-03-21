package CSS::Adaptor::Minified;

use strict;
use warnings;

use base 'CSS::Adaptor';


sub format_stylesheet {
	my ($self, $stylesheet) = @_;

	my @blobs;

	for (@{$stylesheet->{items}}){

		push @blobs, $self->format_atrule($_) if ref $_ eq 'CSS::AtRule';
		push @blobs, $self->format_ruleset($_) if ref $_ eq 'CSS::Ruleset';
	}

	return join "", @blobs;
}

sub format_ruleset {
	my ($self, $ruleset) = @_;

	my $selectors		= join ',', map {$self->format_selector($_)   } @{$ruleset->{selectors}};
	my $declarations	= join ";", map {$self->format_declaration($_)} @{$ruleset->{declarations}};

	return $selectors."{".$declarations.";}\n";
}

sub format_declaration {
	my ($self, $declaration) = @_;

	my $val = $declaration->{simple_value};
	$val =~ s/^\s*(.*?)\s*$/$1/;

	my $prop = $declaration->{property};
	$prop =~ s/^\s*(.*?)\s*$/$1/;

	return "$prop:$val";
}

1;

__END__

=head1 NAME

CSS::Adaptor::Pretty - An example adaptor for pretty-printing CSS.

=head1 SYNOPSIS

  use CSS;
  ...

=head1 DESCRIPTION

This class implements a CSS::Adaptor object to display a
stylesheet in a 'pretty' style.

=head1 AUTHORS

Copyright (C) 2003-2010, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>, L<CSS::Adaptor>

=cut
