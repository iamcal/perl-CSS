package CSS::AtRule;

use strict;
use warnings;

sub new {
	my ($class, $name, $value) = @_;
	my $self = bless {}, $class;

	$self->{name} = $name;
	$self->{value} = $value;

	return $self;
}

1;

__END__

=head1 NAME

CSS::AtRule - A CSS at-rule

=head1 SYNOPSIS

  use CSS;

=head1 DESCRIPTION

This module represents an at-rule in a CSS match tree.
Read the C<CSS> pod for information about the CSS match tree.

=head1 METHODS

=over

=item C<new( $name, $value )>

This constructor returns a new C<CSS::AtRule> object, setting the name and value.

At this point, the C<name> and C<value> are both flat scalars. The at-rule C<@import "foo";>
would be represented by this object:

  bless( {
      'name' => 'import'
      'value' => '"foo"',
  }, 'CSS::AtRule' ),

The various grammars all match at-rules in a more detailed way - by walking the 
parse tree yourself you can extract more structured information about each rule.

=back

=head1 AUTHOR

Copyright (C) 2003-2006, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>

=cut
