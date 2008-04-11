#!/usr/bin/perl -w

use strict;
use Data::Dumper;

my $foo = CSS::Tokener::instance();

print Dumper $foo->toke("foo { bar: 10em; }", 'CSS2.1');


package CSS::Tokener;

use vars qw( $tokener );

sub instance {
	return $tokener if $tokener;
	$tokener = __PACKAGE__->new;
}

sub new {
	my ($class) = @_;
	my $self = bless {}, $class;

	$self->{default_grammar} = 'CSS2.1';
	$self->{rulesets} = {};
	$self->init();

	return $self;
}

sub init {
	my ($self) = @_;

	my %rx;

	$rx{h}		= '[0-9a-f]';
	$rx{nonascii}	= '[\\x80-\\xff]';
	$rx{unicode}	= '(\\'.$rx{h}.'{1,6}(\\r\\n|[ \\t\\r\\n\\f])?)';
	$rx{escape}	= '('.$rx{unicode}.'|\\\\[ -~\\x80-\\xff])';
	$rx{s}		= '[ \t\r\n\f]';
	$rx{w}		= "$rx{s}*";
	$rx{nl}		= '(\\n|\\r\\n|\\r|\\f)';

	$rx{nmstart}	= '([_a-z]|'.$rx{nonascii}.'|'.$rx{escape}.')';
	$rx{nmchar}	= '([_a-zA-Z0-9-]|'.$rx{nonascii}.'|'.$rx{escape}.')';

	$rx{string1}	= '("([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|\'|('.$rx{nonascii}.')|('.$rx{escape}.'))*")';
	$rx{string2}	= '(\'([\\t !#$%&(-~]|\\\\('.$rx{nl}.')|"|('.$rx{nonascii}.')|('.$rx{escape}.'))*\')';

	$rx{ident}	= "$rx{nmstart}$rx{nmchar}*";
	$rx{name}	= "$rx{nmchar}+";
	$rx{num}	= '([0-9]+|[0-9]*\\.[0-9]+)';
	$rx{string}	= "($rx{string1}|$rx{string2})";
	$rx{url}	= "(([!#\$%&*-~]|$rx{nonascii}|$rx{escape})*)";

	$rx{range}	= "(\\?{1,6}|$rx{h}(\\?{0,5}|$rx{h}(\\?{0,4}|$rx{h}(\\?{0,3}|$rx{h}(\\?{0,2}|$rx{h}(\\??|$rx{h}))))))";


	my $css2 = $self->new_ruleset('CSS2.1');

	$css2->add_rule('S'		, "$rx{s}+");
	$css2->add_rule('CDO'		, '<!--');
	$css2->add_rule('CDC'		, '-->');
	$css2->add_rule('INCLUDES'	, '~=');
	$css2->add_rule('DASHMATCH'	, '\\|=');

	$css2->add_rule('LBRACE'	, "$rx{w}\\{");
	$css2->add_rule('PLUS'		, "$rx{w}\\+");
	$css2->add_rule('GREATER'	, "$rx{w}>");
	$css2->add_rule('COMMA'		, "$rx{w},");

	$css2->add_rule('STRING'	, $rx{string});
	$css2->add_rule('IDENT'		, $rx{ident});
	$css2->add_rule('HASH'		, "#$rx{name}");

	$css2->add_rule('IMPORT_SYM'	, '@import');
	$css2->add_rule('PAGE_SYM'	, '@page');
	$css2->add_rule('MEDIA_SYM'	, '@media');
	$css2->add_rule('CHARSET_SYM'	, '@charset');

	$css2->add_rule('IMPORTANT_SYM'	, "!$rx{w}important");

	$css2->add_rule('EMS'		, "$rx{num}em");
	$css2->add_rule('EXS'		, "$rx{num}ex");
	$css2->add_rule('LENGTH'	, "$rx{num}(px|cm|mm|in|pt|pc)");
	$css2->add_rule('ANGLE'		, "$rx{num}(deg|rad|grad)");
	$css2->add_rule('TIME'		, "$rx{num}(ms|s)");
	$css2->add_rule('FREQ'		, "$rx{num}(Hz|kHz)");
	$css2->add_rule('DIMEN'		, "$rx{num}$rx{ident}");
	$css2->add_rule('PERCENTAGE'	, "$rx{num}%");
	$css2->add_rule('NUMBER'	, "$rx{num}");

	$css2->add_rule('URI'		, "url\\($rx{w}($rx{string}|$rx{url}$rx{w})\\)");
	$css2->add_rule('FUNCTION'	, "$rx{ident}\\(");



	
}

sub new_ruleset {
	my ($self, $name) = @_;

	my $set = CSS::Tokener::Ruleset->new($name);

	$self->{rulesets}->{$name} = $set;

	return $set;
}

sub toke {
	my ($self, $input, $ruleset) = @_;

	$ruleset = $self->{default_grammar} unless defined $ruleset;

	die "can't find ruleset '$ruleset'" unless defined $self->{rulesets}->{$ruleset};

	return $self->{rulesets}->{$ruleset}->toke($input);
}


package CSS::Tokener::Ruleset;

sub new {
	my ($class, $name) = @_;
	my $self = bless {}, $class;

	$self->{name} = $name;
	$self->{rules} = {};
	$self->{rule_order} = [];

	return $self;
}

sub add_rule {
	my ($self, $name, $rx) = @_;

	$self->{rules}->{$name} = qr/^($rx)/;
	push @{$self->{rule_order}}, $name;
}

sub toke {
	my ($self, $input) = @_;


	# strip comments first
	$input =~ s!/\*[^*]*\*+([^/*][^*]*\*+)*/!!g;


	my $tokens = [];

	while(length $input){

		my $matched = 0;

		for my $rule(@{$self->{rule_order}}){

			if ($input =~ $self->{rules}->{$rule}){

				push @{$tokens}, CSS::Tokener::Token->new($rule, $1);
				$input = substr $input, length $1;
				$matched = 1;

				last;
			}
		}

		unless ($matched){

			push @{$tokens}, CSS::Tokener::Token->new('MISC', substr $input, 0, 1);
			$input = substr $input, 1;
		}
	}

	return $tokens;
}
	

package CSS::Tokener::Token;

sub new {
	my ($class, $type, $content) = @_;
	my $self = bless {}, $class;

	$self->{type} = $type;
	$self->{content} = $content;

	return $self;
}


1;
