package CSS::Adaptor::Debug;

use strict;
use warnings;

use base 'CSS::Adaptor';

sub format_atrule {
	my ($self, $atrule) = @_;
	return "ATRULE: $atrule->{name}=$atrule->{value}\n";
}

sub format_ruleset {
	my ($self, $ruleset) = @_;

	my $out = "RULESET START\n";

	for my $selector (@{$ruleset->{selectors}}){
		$out .= "\tSELECTOR: $selector->{name}\n";
	}

	for my $declaration (@{$ruleset->{declarations}}){

		$out .= "\tPROPERTY: $declaration->{property}=$declaration->{value}\n";
	}

	$out .= "RULESET END\n";

	return $out;
}


1;

__END__

=head1 NAME

CSS::Adaptor::Debug - An example adaptor for debugging CSS.

=head1 SYNOPSIS

  use CSS;
  ...

=head1 DESCRIPTION

This class implements a CSS::Adaptor object to display a 
stylesheet in  'debugging' style.

=head1 AUTHORS

Copyright (C) 2003-2010, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>, L<CSS::Adaptor>

=cut
