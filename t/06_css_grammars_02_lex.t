use Test::More tests => 44;

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
);


#
# this function takes an input string, tokes and lexes it,
# formats the match tree into lines only containing the
# matching tokens, then compares the lines to the example
# list, testing the number and content.
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
