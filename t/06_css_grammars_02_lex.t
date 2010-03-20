use Test::More tests => 84;

&test_lex(
	'CSS::Grammar::CSS10',
	'hello { world: foo; }',
	[
		'stylesheet>ruleset>selector>simple_selector>element_name(IDENT:hello)',
		'stylesheet>ruleset>*(_BRACE_OPEN:{)',
		'stylesheet>ruleset>declaration>property(IDENT:world)',
		'stylesheet>ruleset>declaration>*(_COLON::)',
		'stylesheet>ruleset>declaration>expr>term>*(IDENT:foo)',
		'stylesheet>ruleset>*(_SEMICOLON:;)',
		'stylesheet>ruleset>*(_BRACE_CLOSE:})',
	],
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

&test_lex(
	'CSS::Grammar::CSS20',
	'hello { world: foo; }',
	[
		'stylesheet>ruleset>selector>simple_selector>element_name>*(IDENT:hello)',
		'stylesheet>ruleset>selector>simple_selector>*(S: )',
		'stylesheet>ruleset>*(_BRACE_OPEN:{)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>declaration>property>*(IDENT:world)',
		'stylesheet>ruleset>declaration>*(_COLON::)',
		'stylesheet>ruleset>declaration>*(S: )',
		'stylesheet>ruleset>declaration>expr>term>*(IDENT:foo)',
		'stylesheet>ruleset>*(_SEMICOLON:;)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>*(_BRACE_CLOSE:})',
	],
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

&test_lex(
	'CSS::Grammar::CSS21',
	'hello { world: foo; }',
	[
		'stylesheet>ruleset>selector>simple_selector>element_name>*(IDENT:hello)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>*(LBRACE:{)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>declaration>property>*(IDENT:world)',
		'stylesheet>ruleset>declaration>*(_COLON::)',
		'stylesheet>ruleset>declaration>*(S: )',
		'stylesheet>ruleset>declaration>expr>term>*(IDENT:foo)',
		'stylesheet>ruleset>*(_SEMICOLON:;)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>*(_BRACE_CLOSE:})',
	],
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

&test_lex(
	'CSS::Grammar::CSS30',
	'hello { world: foo; }',
	[
		'stylesheet>ruleset>selector>simple_selector>element_name>*(IDENT:hello)',
		'stylesheet>ruleset>selector>simple_selector>*(S: )',
		'stylesheet>ruleset>*(_BRACE_OPEN:{)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>declaration>property>*(IDENT:world)',
		'stylesheet>ruleset>declaration>*(_COLON::)',
		'stylesheet>ruleset>declaration>*(S: )',
		'stylesheet>ruleset>declaration>expr>term>*(IDENT:foo)',
		'stylesheet>ruleset>*(_SEMICOLON:;)',
		'stylesheet>ruleset>*(S: )',
		'stylesheet>ruleset>*(_BRACE_CLOSE:})',
	],
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
# formats the match tree into lines only containing the
# matching tokens, then compares the lines to the example
# list, testing the number and content.
#
# it them scrubs and reduces the match tree, then compares
# that against the second $expected list. this final output
# is close to the final representation - just lacking a walk
# step.
#

sub test_lex {
	my ($grammar, $css, $expected, $expected2) = @_;

	eval "use $grammar";


	#
	# toke & lex
	#

	my $instance = $grammar->new();
	my $tokens = $instance->toke($css);
	my $tree = $instance->lex($tokens);

	my $lines = &format_match($tree, "");


	#
	# check it matches
	#

	is(scalar @{$lines}, scalar @{$expected}, "Lex match count for $grammar");

	my $c = 0;
	for my $check(@{$expected}){
		my $got = $lines->[$c];
		$c++;
		is($got, $check, "Correct match ($check) for token $c");
	}


	#
	# now perform the cleaning steps - this will give us only the bits we care about
	#

	$tree->scrub;
	$tree->reduce;
	$tree->remove_anon_matches;

	my $lines2 = &format_match2($tree, "");


	#
	# check those match too
	#

	is(scalar @{$lines2}, scalar @{$expected2}, "Lex-clean match count for $grammar");

	$c = 0;
	for my $check(@{$expected2}){
		my $got = $lines2->[$c];
		$c++;
		is($got, $check, "Correct match ($check) for clean-token $c");
	}

}

sub format_match {
	my ($match, $prefix) = @_;

	my $out = [];
	my $rule = $match->{subrule} ? $match->{subrule} : '*';

	my $tokens = [];
	for my $toke (@{$match->{matched_tokens}}){
		push @{$tokens}, '('.$toke->{type}.':'.$toke->{content}.')';
	}
	$tokens = join ' ', @{$tokens};

	if ($tokens ne ''){
		$out = ["$prefix$rule$tokens"];
	}

	for my $sub (@{$match->{submatches}}){

		my $more = [];

		if ($rule eq '*'){
			$more = &format_match($sub, $prefix);
		}else{
			$more = &format_match($sub, $prefix.$rule.">");
		}

		for my $item (@{$more}){
			push @{$out}, $item;
		}
	}

	return $out;
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
