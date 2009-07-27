use Test::More tests => 84;

my ($grammar, $tokens);


&test_toke(
	'CSS::Grammar::CSS10',
	'hello { world: foo; }',
	[
		['IDENT', 'hello'],
		['_BRACE_OPEN', '{'],
		['IDENT', 'world'],
		['_COLON', ':'],
		['IDENT', 'foo'],
		['_SEMICOLON', ';'],
		['_BRACE_CLOSE', '}'],
	],
);

&test_toke(
	'CSS::Grammar::CSS20',
	'hello { world: foo; }',
	[
		['IDENT', 'hello'],
		['S', ' '],
		['_BRACE_OPEN', '{'],
		['S', ' '],
		['IDENT', 'world'],
		['_COLON', ':'],
		['S', ' '],
		['IDENT', 'foo'],
		['_SEMICOLON', ';'],
		['S', ' '],
		['_BRACE_CLOSE', '}'],
	],
);

&test_toke(
	'CSS::Grammar::CSS21',
	'hello { world: foo; }',
	[
		['IDENT', 'hello'],
		['S', ' '],
		['LBRACE', '{'],
		['S', ' '],
		['IDENT', 'world'],
		['_COLON', ':'],
		['S', ' '],
		['IDENT', 'foo'],
		['_SEMICOLON', ';'],
		['S', ' '],
		['_BRACE_CLOSE', '}'],
	],
);

&test_toke(
	'CSS::Grammar::CSS30',
	'hello { world: foo; }',
	[
		['IDENT', 'hello'],
		['S', ' '],
		['_BRACE_OPEN', '{'],
		['S', ' '],
		['IDENT', 'world'],
		['_COLON', ':'],
		['S', ' '],
		['IDENT', 'foo'],
		['_SEMICOLON', ';'],
		['S', ' '],
		['_BRACE_CLOSE', '}'],
	],
);



#
# this function takes an input string and tokes it, then
# compares the tokens to the example list, testing count,
# type and content.
#

sub test_toke {
	my ($grammar, $input, $expected) = @_;

	eval "use $grammar";

	my $tokens = $grammar->new()->toke($input);

	is(scalar @{$tokens}, scalar @{$expected}, "Token count for $grammar");

	my $c = 0;
	for my $check(@{$expected}){
		my $got = $tokens->[$c];
		$c++;
		is($got->{type}, $check->[0], "Correct type ($check->[0]) for token $c");
		is($got->{content}, $check->[1], "Correct content ($check->[1]) for token $c");
	}
}

