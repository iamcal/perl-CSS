package CSS::Declaration;

use strict;
use warnings;

sub new {
	my ($class) = @_;
	my $self = bless {}, $class;

	$self->{property}	= '';
	$self->{value}		= '';
	$self->{simple_value}	= '';

	return $self;
}

1;

__END__

=head1 NAME

CSS::Declaration - A CSS declaration

=head1 SYNOPSIS

  use CSS;

=head1 DESCRIPTION

This module represents a declaration in a CSS match tree.
Read the C<CSS> pod for information about the CSS match tree.

=head1 METHODS

=over

=item C<new()>

This constructor returns a new C<CSS::Declaration> object.

At this point, the C<property>, C<value> and C<simple_value> are all flat scalars.
The declaration C<clip: rect(1,2,3,4);> would be represented by this object:

  bless( {
      'property' => 'clip'
      'value' => 'rect(1,2,3,4)',
      'simple_value' => 'rect(1,2,3,4)',
  }, 'CSS::Declaration' ),

The various grammars all match declaration values in a more detailed way - by walking the 
parse tree yourself you can extract more structured information about each declaration.

You are encouraged to use the C<simple_value> scalar for checking against the value, as the
C<value> scalar will eventually become a C<CSS::Value> object.

=back

=head1 AUTHOR

Copyright (C) 2003-2010, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>

=cut
