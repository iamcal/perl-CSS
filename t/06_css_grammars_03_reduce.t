use Test::More tests => 40;

&test_scrub(
	'CSS::Grammar::CSS10',
	'hello { world: foo; }',
	[
		'stylesheet : hello{world:foo;}',
		'stylesheet>ruleset : hello{world:foo;}',
		'stylesheet>ruleset>selector : hello',
		'stylesheet>ruleset>selector>simple_selector : hello',
		'stylesheet>ruleset>selector>simple_selector>element_name : hello',
		'stylesheet>ruleset>declaration : world:foo',
		'stylesheet>ruleset>declaration>property : world',
		'stylesheet>ruleset>declaration>expr : foo',
		'stylesheet>ruleset>declaration>expr>term : foo',
	],
);

&test_scrub(
	'CSS::Grammar::CSS20',
	'hello { world: foo; }',
	[
		'stylesheet : hello { world: foo; }',
		'stylesheet>ruleset : hello { world: foo; }',
		'stylesheet>ruleset>selector : hello ',
		'stylesheet>ruleset>selector>simple_selector : hello ',
		'stylesheet>ruleset>selector>simple_selector>element_name : hello',
		'stylesheet>ruleset>declaration : world: foo',
		'stylesheet>ruleset>declaration>property : world',
		'stylesheet>ruleset>declaration>expr : foo',
		'stylesheet>ruleset>declaration>expr>term : foo',
	],
);

&test_scrub(
	'CSS::Grammar::CSS21',
	'hello { world: foo; }',
	[
		'stylesheet : hello { world: foo; }',
		'stylesheet>ruleset : hello { world: foo; }',
		'stylesheet>ruleset>selector : hello',
		'stylesheet>ruleset>selector>simple_selector : hello',
		'stylesheet>ruleset>selector>simple_selector>element_name : hello',
		'stylesheet>ruleset>declaration : world: foo',
		'stylesheet>ruleset>declaration>property : world',
		'stylesheet>ruleset>declaration>expr : foo',
		'stylesheet>ruleset>declaration>expr>term : foo',
	],
);

&test_scrub(
	'CSS::Grammar::CSS30',
	'hello { world: foo; }',
	[
		'stylesheet : hello { world: foo; }',
		'stylesheet>ruleset : hello { world: foo; }',
		'stylesheet>ruleset>selector : hello ',
		'stylesheet>ruleset>selector>simple_selector : hello ',
		'stylesheet>ruleset>selector>simple_selector>element_name : hello',
		'stylesheet>ruleset>declaration : world: foo',
		'stylesheet>ruleset>declaration>property : world',
		'stylesheet>ruleset>declaration>expr : foo',
		'stylesheet>ruleset>declaration>expr>term : foo',
	],
);


#
# this function takes an input string, tokes and lexes it,
# then scrubs and reduces the match tree, then compares
# that against the $expected list. this final output
# is close to the final representation - just lacking a walk
# step.
#

sub test_scrub {
	my ($grammar, $css, $expected) = @_;

	eval "use $grammar";


	#
	# toke & lex & reduce
	#

	my $instance = $grammar->new();
	my $tokens = $instance->toke($css);
	my $tree = $instance->lex($tokens);

	$tree->scrub;
	$tree->reduce;
	$tree->remove_anon_matches;

	my $lines = &format_match2($tree, "");


	#
	# check it matches the expected
	#

	is(scalar @{$lines}, scalar @{$expected}, "Reduce match count for $grammar");

	$c = 0;
	for my $check(@{$expected}){
		my $got = $lines->[$c];
		$c++;
		is($got, $check, "Correct match ($check) for reduced token $c");
	}

}

sub format_match2 {
	my ($match, $prefix) = @_;

	my $out = [];
	my $rule = $match->{subrule} ? $match->{subrule} : '*';
	my $text = "" . $match->{matched_text};

	if ($text ne ''){
		$out = ["$prefix$rule : $text"];
	}

	for my $sub (@{$match->{submatches}}){

		my $more = [];

		if ($rule eq '*'){
			$more = &format_match2($sub, $prefix);
		}else{
			$more = &format_match2($sub, $prefix.$rule.">");
		}

		for my $item (@{$more}){
			push @{$out}, $item;
		}
	}

	return $out;
}
