package CSS::Ruleset;

use strict;
use warnings;

sub new {
	my ($class) = @_;
	my $self = bless {}, $class;

	$self->{selector} = '';
	$self->{selectors} = [];
	$self->{declarations} = [];

	$self->{properties} = $self->{declarations};

	return $self;
}

sub match_selector {
	my ($self, $name) = @_;

	for my $selector (@{$self->{selectors}}){

		if ($selector->{name} eq $name){

			return 1;
		}
	}

	return 0;
}

sub get_property_by_name {

	return get_declaration_by_name(@_);
}

sub get_declaration_by_name {
	my ($self, $name) = @_;

	for my $declaration (@{$self->{declarations}}){

		if ($declaration->{property} eq $name){

			return $declaration;
		}
	}

	return undef;
}


1;

__END__

=head1 NAME

CSS::Ruleset - A CSS ruleset

=head1 SYNOPSIS

  use CSS;

=head1 DESCRIPTION

This module represents a CSS ruleset. For example:

  foo {
    bar: baz;
  }

This is a single ruleset, with one selector ('foo') and one declaration ('bar').
The ruleset object maintains a list of C<CSS::Selector> and C<CSS::Declaration>
objects internally. Details are given below.

=head1 METHODS

=over

=item C<new()>

Returns a new C<CSS::Ruleset> object

=item C<match_selector( $name )>

Returns 1 if the ruleset has a selector matching the value in C<$name>, else returns 0.

=item C<get_property_by_name( $name )>

Deprecated alias for C<get_declaration_by_name()>.

=item C<get_declaration_by_name( $name )>

Returns a declaration object by name, or undef if none exists.

=back

=head1 INTERNALS

=over

=item C<$ruleset-E<gt>{selector}>

A string containing the concatenated selectors for this ruleset.

=item C<$ruleset-E<gt>{selectors}>

A reference to an array of C<CSS::Selector> objects.

=item C<$ruleset-E<gt>{declarations}>

A reference to an array of C<CSS::Declaration> objects.

=item C<$ruleset-E<gt>{properties}>

A deprecated alias for C<$ruleset-E<gt>{declarations}>.

=back

=head1 AUTHOR

Copyright (C) 2003-2006, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>,
L<CSS::Selector>,
L<CSS::Declaration>

=cut
