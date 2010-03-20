package CSS::Parse::Rule::Trace;

use base 'CSS::Parse::Rule';

sub match {
	my $self = shift;

	print "Starting to match $self->{name}\n" if $self->{trace_in};

	my $ret = $self->SUPER::match(@_);

	print "Ending match on $self->{name} (".(defined $ret ? 'MATCHED' : 'no match').")\n" if $self->{trace_out};

	return $ret;
}

1;

__END__

=head1 NAME

CSS::Parse::Rule::Trace - Trace the matching of a CSS parser rule

=head1 SYNOPSIS

  use CSS::Parse::Rule::Trace;

  my $rule = $grammar->find_lex_rule('my_rule_name');

  bless $rule, 'CSS::Parse::Rule::Trace';

  $rule->{trace_in} = 1;
  $rule->{trace_out} = 1;

  $grammar->lex($tokens);

=head1 DESCRIPTION

This module allows you to see the matching (or not) of certain lex rules during a 
lex pass. You need to get hold of a C<CSS::Parse::Rule> object and bless it at runtime,
then set the C<trace_in> and C<trace_out> flags to print trace information to C<STDOUT>
during the lex.

The problem here is that the C<CSS::Grammar> object is created at runtime inside the
C<$css-E<gt>parse_string()> method, which also calls the C<$grammar-E<gt>lex()> method.
To hook into individual lex methods, you need to avoid using the C<CSS> class directly
and manually perform the various parsing steps:

  use CSS::Grammar::Core;
  use CSS::Parse::Rule::Trace;

  # slurp file
  local *IN;
  open(IN, 'test.css') or die "Couldn't open file: $!";
  my $source = join '',<IN>;
  close(IN);

  # create grammar
  my $grammar = new CSS::Grammar::Core;

  # set debug hooks
  my $rule = $grammar->find_lex_rule('my_rule_name');
  bless $rule, 'CSS::Parse::Rule::Trace';
  $rule->{trace_in} = 1;
  $rule->{trace_out} = 1;

  # toke
  my $tokens = $grammar->toke($source);
  die "Can't tokenize input" unless defined $tokens;

  # lex
  my $tree = $grammar->lex($tokens);
  die "Can't lex token stream" unless defined $tree;

  # reduce & walk
  $tree->reduce;
  my $sheet = $grammar->walk($tree);
  die "Can't walk the match tree" unless defined $sheet;

=head1 AUTHOR

Copyright (C) 2003-2010, Cal Henderson <cal@iamcal.com>

=head1 SEE ALSO

L<CSS>, L<CSS::Parse::Rule>

=cut
