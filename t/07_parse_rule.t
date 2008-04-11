use Test::More tests => 5;

my ($rule);

use CSS::Parse::Rule;

#
# create a bad grouping sequence
#

$rule = new CSS::Parse::Rule;

$rule->parse('foo [ bar');
like($rule->{error}, qr/^Group wasn't closed/, "Non-closed group");

$rule->parse('foo ] bar');
like($rule->{error}, qr/^End of group/, "Non-opened group");


#
# testing bad alternation reduction is hard since the
# method in CSS::Parse::Op can't actually fail.
#

{
	package CSS::Parse::Rule::Special;

	use base 'CSS::Parse::Rule';

	sub produce_groups { bless $_[1], 'CSS::Parse::Op::Special'; return 1; }

	package CSS::Parse::Op::Special;

	use base 'CSS::Parse::Op';

	sub reduce_alternations { $_[0]->{error} = 'Fake error!'; return 0; }

	1;
}

$rule = new CSS::Parse::Rule::Special;
$rule->parse('foo');
is($rule->{error}, 'Fake error!', "Failed reduce_alternations() call");


#
# repetition ops
#

$rule = new CSS::Parse::Rule;

$rule->parse('foo + | *');
like($rule->{error}, qr/^Repetition operator/, "Repetition operator without subject");


#
# testing empty-folding errors is tough too,
# since it can't actually fail
#

{
	package CSS::Parse::Rule::Special2;

	use base 'CSS::Parse::Rule';

	sub produce_groups {
		bless $_[1], 'CSS::Parse::Op::Special2';
		my $self = shift;
		return $self->SUPER::produce_groups(@_);
	}

	package CSS::Parse::Op::Special2;

	use base 'CSS::Parse::Op';

	sub reduce_empty {
		$_[0]->{error} = 'Fake error 2!';
		return 0;
	}

	1;
}

$rule = new CSS::Parse::Rule::Special2;
$rule->parse('foo');
is($rule->{error}, 'Fake error 2!', "Failed reduce_empty() call");

