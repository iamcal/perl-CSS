use Test::More;
use CSS;
use Data::Dumper;

BEGIN {
	@::modules = (
		'CSS::Grammar::Core',
	#	'CSS::Grammar::CSS10',
	#	'CSS::Grammar::CSS20',
	#	'CSS::Grammar::CSS21',
		'CSS::Grammar::CSS30',
	);

	plan tests => 28 * scalar @::modules;
}


for my $module (@::modules){

	my $css = new CSS;
	$css->{grammar} = $module;

	$css->read_file('t/css_simple');

	&test_ruleset($module, $css, [
		{
			'selectors'	=> [
				'a:visited',
			],
			'declarations'	=> [
				['background-color', 'red'],
				['border', '1px solid #000000'],
				['foo', '"bar"'],
			],
		},

		{
			'selectors'	=> [
				'foo.bar',
				'baz',
			],
			'declarations'	=> [
				['font', 'monospace'],
				['color', 'black'],
				['baz', 'url(la/la/la)'],
				['fop', 'url("la la la")'],
			],
		},

		{
			'selectors'	=> [
				'foo.xyzzy',
				'a p',
			],
			'declarations'	=> [
				['font', 'sans-serif'],
			],
		},
	]);

	#print Dumper $css;
	#exit;
}


sub test_ruleset {
	my ($module, $css, $expected) = @_;

	is(scalar(@{$css->{rulesets}}), scalar(@{$expected}), "$module: expected number of rulesets");

	my $i = 0;

	for my $expected_set (@{$expected}){

		my $got_set = $css->{rulesets}->[$i];

		#
		# selectors
		#

		is(scalar(@{$got_set->{selectors}}), scalar(@{$expected_set->{selectors}}), "$module: expected number of selectors in ruleset $i");

		my $j = 0;

		for my $expected_sel (@{$expected_set->{selectors}}){

			my $got_sel = $got_set->{selectors}->[$j];

			is($got_sel->{name}, $expected_sel, "$module: selector $j matches (for ruleset $i)");

			$j++;
		}


		#
		# declarations
		#

		is(scalar(@{$got_set->{declarations}}), scalar(@{$expected_set->{declarations}}), "$module: expected number of declarations in ruleset $i");

		$j = 0;

		for my $expected_dec (@{$expected_set->{declarations}}){

			my $got_dec = $got_set->{declarations}->[$j];

			is($got_dec->{property}, $expected_dec->[0], "$module: declaration property $j matches (for ruleset $i)");
			is($got_dec->{value}, $expected_dec->[1], "$module: declaration value $j matches (for ruleset $i)");

			$j++;
		}



		$i++;
	}
}
