package CSS::Grammar::Core;

use strict;
use warnings;

use base 'CSS::Grammar';

use CSS::Stylesheet;
use CSS::Ruleset;
use CSS::Declaration;
use CSS::Selector;
use CSS::AtRule;


#
# http://www.w3.org/TR/REC-CSS2/syndata.html#tokenization
#

sub init {
	my ($self) = @_;

	my %rx;

	$rx{w}		= '[ \\t\\r\\n\\f]*';
	$rx{nl}		= '(\\n|\\r\\n|\\r|\\f)';
	$rx{unicode}	= '(\\[0-9a-f]{1,6}[ \\n\\r\\t\\f]?)';
	$rx{escape}	= '('.$rx{unicode}.'|\\\\[ -~\\x80-\\xff])';
	$rx{nonascii}	= '[\\x80-\\xff]';
	$rx{num}	= '([0-9]+|[0-9]*\\.[0-9]+)';

	$rx{nmstart}	= '([a-z]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{nmchar}	= '([a-z0-9-]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{string1}	= '("([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|\'|('.$rx{nonascii}.')|('.$rx{escape}.'))*")';
	$rx{string2}	= '(\'([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|"|('.$rx{nonascii}.')|('.$rx{escape}.'))*\')';

	$rx{string}	= "($rx{string1}|$rx{string2})";
	$rx{ident}	= "$rx{nmstart}$rx{nmchar}*";
	$rx{name}	= "$rx{nmchar}+";


	$self->{case_insensitive} = 1;

	$self->add_toke_rule('IDENT'		, $rx{ident});
	$self->add_toke_rule('ATKEYWORD'	, "\@$rx{ident}");
	$self->add_toke_rule('STRING'		, $rx{string});
	$self->add_toke_rule('HASH'		, "#$rx{name}");
	$self->add_toke_rule('NUMBER'		, "$rx{num}");
	$self->add_toke_rule('PERCENTAGE'	, "$rx{num}%");
	$self->add_toke_rule('DIMENSION'	, "$rx{num}$rx{ident}");
	$self->add_toke_rule('URI'		, "(url\\($rx{w}$rx{string}$rx{w}\\))|(url\\($rx{w}([!#$%&*-~]|$rx{nonascii}|$rx{escape})*$rx{w}\\))");
	$self->add_toke_rule('UNICODE-RANGE'	, "U\\+[0-9A-F?]{1,6}(-[0-9A-F]{1,6})?");
	$self->add_toke_rule('CDO'		, '<!--');
	$self->add_toke_rule('CDC'		, '-->');
	$self->add_toke_rule('_COLON'		, ':');
	$self->add_toke_rule('_SEMICOLON'	, ';');
	$self->add_toke_rule('_BRACE_OPEN'	, '{');
	$self->add_toke_rule('_BRACE_CLOSE'	, '}');
	$self->add_toke_rule('_ROUND_OPEN'	, '\\(');
	$self->add_toke_rule('_ROUND_CLOSE'	, '\\)');
	$self->add_toke_rule('_SQUARE_OPEN'	, '\\[');
	$self->add_toke_rule('_SQUARE_CLOSE'	, '\\]');
	$self->add_toke_rule('S'		, '[ \\t\\r\\n\\f]');
	# COMMENT 	\/\*[^*]*\*+([^/][^*]*\*+)*\/
	$self->add_toke_rule('FUNCTION'		, "$rx{ident}\\(");
	$self->add_toke_rule('INCLUDES'		, '~=');
	$self->add_toke_rule('DASHMATCH'	, '\\|=');
	$self->add_toke_rule('DELIM'		, '.');


	$self->add_lex_rule('stylesheet',	'[ CDO | CDC | S | statement ]*');
	$self->add_lex_rule('statement',	'ruleset | at-rule');
	$self->add_lex_rule('at-rule',		'ATKEYWORD S* any* [ block | _SEMICOLON S* ]');
	$self->add_lex_rule('block',		'_BRACE_OPEN S* [ any | block | ATKEYWORD S* | _SEMICOLON ]* _BRACE_CLOSE S*');
	$self->add_lex_rule('ruleset',		'selector? _BRACE_OPEN S* declaration? [ _SEMICOLON S* declaration? ]* _BRACE_CLOSE S*');
	$self->add_lex_rule('selector',		'any+');
	$self->add_lex_rule('declaration',	'property _COLON S* value');
	$self->add_lex_rule('property',		'IDENT S*');
	$self->add_lex_rule('value',		'[ any | block | ATKEYWORD S* ]+');
	$self->add_lex_rule('any',		'[ IDENT | NUMBER | PERCENTAGE | DIMENSION | STRING | DELIM | _COLON | URI | HASH | UNICODE-RANGE | INCLUDES | FUNCTION | DASHMATCH | _ROUND_OPEN any* _ROUND_CLOSE | _SQUARE_OPEN any* _SQUARE_CLOSE ] S*');


	$self->set_base('stylesheet');
}

sub toke {
	my ($self, $input) = @_;

	# strip comments first
	$input =~ s!/\*[^*]*\*+([^/*][^*]*\*+)*/!!sg;

	$self->SUPER::toke($input);
}

sub walk_stylesheet {
	my ($self, $stylesheet, $submatches) = @_;

	for my $statement (@{$submatches}){

		next unless defined $statement->{subrule};
		next unless $statement->{subrule} eq 'statement';

		my $sub = $statement->{submatches}->[0];

		if ($sub->{subrule} eq 'ruleset'){

			my $ruleset = $self->walk_ruleset($sub);

			push @{$stylesheet->{rulesets}}, $ruleset;
			push @{$stylesheet->{items}}, $ruleset;
		}

		if ($sub->{subrule} eq 'at-rule'){

			my $atrule = $self->walk_atrule($sub);

			push @{$stylesheet->{atrules}}, $atrule;
			push @{$stylesheet->{items}}, $atrule;
		}

		#print "subrule: $sub->{subrule}\n";
	}

	return $stylesheet;
}

sub walk_ruleset {
	my ($self, $match) = @_;

	#
	# first match token should be a selector, if we have one
	#

	my $ruleset = new CSS::Ruleset;

	for my $submatch (@{$match->{submatches}}){

		if ($submatch->{subrule} eq 'selector'){

			$ruleset->{selector} = $submatch->{matched_text};
			$ruleset->{selector} =~ s/^\s*(.*?)\s*/$1/s;

			$self->walk_selectors($ruleset, $submatch);
		}

		if ($submatch->{subrule} eq 'declaration'){

			my $declaration = $self->walk_declaration($submatch);

			push @{$ruleset->{declarations}}, $declaration;

		}
	}

	return $ruleset;
}

sub walk_declaration {
	my ($self, $match) = @_;

	my $declaration = new CSS::Declaration;

	for my $submatch (@{$match->{submatches}}){

		next unless defined $submatch->{subrule};

		if ($submatch->{subrule} eq 'property'){

			$declaration->{property} = $submatch->{matched_text};
		}

		if ($submatch->{subrule} eq 'value'){

			$declaration->{value} = $submatch->{matched_text};
			$declaration->{simple_value} = $submatch->{matched_text};
		}
	}

	return $declaration;
}

sub walk_atrule {
	my ($self, $match) = @_;

	my %rx;
	$rx{unicode}	= '(?:\\[0-9a-f]{1,6}[ \\n\\r\\t\\f]?)';
	$rx{escape}	= '(?:'.$rx{unicode}.'|\\\\[ -~\\x80-\\xff])';
	$rx{nonascii}	= '[\\x80-\\xff]';
	$rx{nmstart}	= '(?:[a-z]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{nmchar}	= '(?:[a-z0-9-]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{ident}	= "$rx{nmstart}$rx{nmchar}*";

	if ($match->{matched_text} =~ m/^\@($rx{ident})(.*?)$/s){

		my $rule = $1;
		my $value = $2;

		$value =~ s!^\s*(.*?);?\s*$!$1!s;

		return new CSS::AtRule($rule, $value);
	}

	return new CSS::AtRule();
}

sub walk_selectors {
	my ($self, $ruleset, $match) = @_;

	my $buffer = '';

	for my $submatch (@{$match->{submatches}}){

		if ($submatch->{matched_text} =~ m!\s*,\s*!s){

			$self->commit_selector($ruleset, $buffer);
			$buffer = '';
		}else{
			$buffer .= $submatch->{matched_text};
		}
	}

	$self->commit_selector($ruleset, $buffer);
}

sub commit_selector {
	my ($self, $ruleset, $text) = @_;

	$text =~ s/^\s*(.*?)\s*$/$1/s;
	push @{$ruleset->{selectors}}, new CSS::Selector($text) if length $text;
}

1;
