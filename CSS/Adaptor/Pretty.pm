package CSS::Adaptor::Pretty;

$VERSION = 1.00;

use CSS::Adaptor;
@ISA = qw(CSS::Adaptor);

use strict;
use warnings;

sub output_rule {
	my ($self, $rule) = @_;
	return $rule->selectors." {\n".$rule->properties."}\n\n" ;
}

sub output_properties {
	my ($self, $properties) = @_;
	return join("", map {"\t".$_->{property}.":\t".$_->values.";\n"} @{$properties});
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

Copyright (C) 2003 Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>, L<CSS::Adaptor>

=cut
