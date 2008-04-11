use Test::More;

BEGIN {
	@::modules = (
		'CSS',
		'CSS::Adaptor',
		'CSS::AtRule',
		'CSS::Declaration',
		'CSS::Grammar',
		'CSS::Ruleset',
		'CSS::Selector',
		'CSS::Stylesheet',
		'CSS::Adaptor::Debug',
		'CSS::Adaptor::Pretty',
		'CSS::Grammar::Core',
		'CSS::Grammar::CSS10',
		'CSS::Grammar::CSS20',
		'CSS::Grammar::CSS21',
		'CSS::Grammar::CSS30',
		'CSS::Grammar::Simple',
		'CSS::Parse::Rule',
		'CSS::Parse::Op',
		'CSS::Parse::Match',
		'CSS::Parse::Rule::Trace',
	);

	plan tests => 3 * scalar @::modules;

	use_ok( $_ ) for @::modules;
}

require_ok( $_ ) for @::modules;

isa_ok(eval "$_->new", $_) for @::modules;
