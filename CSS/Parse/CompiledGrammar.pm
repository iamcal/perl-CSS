package CSS::Parse::CompiledGrammar;
use Parse::RecDescent;

{ my $ERRORS;


package Parse::RecDescent::namespace000001;
use strict;
use vars qw($skip $AUTOLOAD  $all_rulesets $ruleset $value );
$skip = '';


{
local $SIG{__WARN__} = sub {0};
# PRETEND TO BE IN Parse::RecDescent NAMESPACE
*Parse::RecDescent::namespace000001::AUTOLOAD	= sub
{
	no strict 'refs';
	$AUTOLOAD =~ s/^Parse::RecDescent::namespace000001/Parse::RecDescent/;
	goto &{$AUTOLOAD};
}
}

push @Parse::RecDescent::namespace000001::ISA, 'Parse::RecDescent';
# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_2_of_rule_URI
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_2_of_rule_URI"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_2_of_rule_URI]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_2_of_rule_URI})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[!#$%&*-~]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_2_of_rule_URI});
		%item = (__RULE__ => q{_alternation_1_of_production_2_of_rule_URI});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[!#$%&*-~]/]}, Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[!#$%&*-~])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[!#$%&*-~]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nonascii]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_2_of_rule_URI});
		%item = (__RULE__ => q{_alternation_1_of_production_2_of_rule_URI});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_nonascii]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_2_of_rule_URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nonascii($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nonascii]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_2_of_rule_URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nonascii]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$item{q{macro_nonascii}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nonascii]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_escape]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_2_of_rule_URI});
		%item = (__RULE__ => q{_alternation_1_of_production_2_of_rule_URI});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_2_of_rule_URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_escape($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_2_of_rule_URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_escape]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$item{q{macro_escape}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_escape]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_2_of_rule_URI})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_2_of_rule_URI})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_2_of_rule_URI});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_2_of_rule_URI})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::NUMBER
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"NUMBER"};
	
	Parse::RecDescent::_trace(q{Trying rule: [NUMBER]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{NUMBER})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_num]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{NUMBER})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{NUMBER});
		%item = (__RULE__ => q{NUMBER});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_num]},
				  Parse::RecDescent::_tracefirst($text),
				  q{NUMBER})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_num($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_num]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{NUMBER})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_num]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{NUMBER})
						if defined $::RD_TRACE;
		$item{q{macro_num}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{NUMBER})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_num]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{NUMBER})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{NUMBER})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{NUMBER})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{NUMBER});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{NUMBER})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::atrule
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"atrule"};
	
	Parse::RecDescent::_trace(q{Trying rule: [atrule]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{atrule})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [ATKEYWORD WS any block, or ';']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{atrule})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{atrule});
		%item = (__RULE__ => q{atrule});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [ATKEYWORD]},
				  Parse::RecDescent::_tracefirst($text),
				  q{atrule})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::ATKEYWORD($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [ATKEYWORD]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{atrule})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [ATKEYWORD]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{atrule})
						if defined $::RD_TRACE;
		$item{q{ATKEYWORD}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{atrule})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{atrule})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{atrule})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying repeated subrule: [any]},
				  Parse::RecDescent::_tracefirst($text),
				  q{atrule})
					if defined $::RD_TRACE;
		$expectation->is(q{any})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::any, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [any]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{atrule})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [any]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{atrule})
						if defined $::RD_TRACE;
		$item{q{any}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying subrule: [_alternation_1_of_production_1_of_rule_atrule]},
				  Parse::RecDescent::_tracefirst($text),
				  q{atrule})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{block, or ';'})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_atrule($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [_alternation_1_of_production_1_of_rule_atrule]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{atrule})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [_alternation_1_of_production_1_of_rule_atrule]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{atrule})
						if defined $::RD_TRACE;
		$item{q{_alternation_1_of_production_1_of_rule_atrule}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{atrule})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {print "at-rule\n"};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [ATKEYWORD WS any block, or ';']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{atrule})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{atrule})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{atrule})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{atrule});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{atrule})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::DASHMATCH
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"DASHMATCH"};
	
	Parse::RecDescent::_trace(q{Trying rule: [DASHMATCH]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{DASHMATCH})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['|=']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{DASHMATCH})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{DASHMATCH});
		%item = (__RULE__ => q{DASHMATCH});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['|=']},
					  Parse::RecDescent::_tracefirst($text),
					  q{DASHMATCH})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\|\=//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{DASHMATCH})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['|=']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{DASHMATCH})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{DASHMATCH})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{DASHMATCH})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{DASHMATCH});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{DASHMATCH})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::INCLUDES
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"INCLUDES"};
	
	Parse::RecDescent::_trace(q{Trying rule: [INCLUDES]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{INCLUDES})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['~=']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{INCLUDES})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{INCLUDES});
		%item = (__RULE__ => q{INCLUDES});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['~=']},
					  Parse::RecDescent::_tracefirst($text),
					  q{INCLUDES})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\~\=//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{INCLUDES})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['~=']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{INCLUDES})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{INCLUDES})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{INCLUDES})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{INCLUDES});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{INCLUDES})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_nonascii
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_nonascii"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_nonascii]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_nonascii})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[^\\0-\\177]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nonascii})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nonascii});
		%item = (__RULE__ => q{macro_nonascii});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[^\\0-\\177]/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_nonascii})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[^\0-\177])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nonascii})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[^\\0-\\177]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nonascii})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_nonascii})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_nonascii})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_nonascii});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_nonascii})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_ruleset
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_ruleset"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_ruleset]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_ruleset})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [';' WS declaration]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_ruleset});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_ruleset});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [';']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\;//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying repeated subrule: [declaration]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{declaration})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::declaration, 0, 1, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [declaration]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [declaration]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		$item{q{declaration}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {6;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [';' WS declaration]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_ruleset})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_ruleset})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_ruleset});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_ruleset})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_nmchar
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_nmchar"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_nmchar]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_nmchar})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[a-z0-9-]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nmchar});
		%item = (__RULE__ => q{macro_nmchar});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[a-z0-9-]/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[a-z0-9-])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[a-z0-9-]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nonascii]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nmchar});
		%item = (__RULE__ => q{macro_nmchar});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_nonascii]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_nmchar})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nonascii($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nonascii]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_nmchar})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nonascii]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$item{q{macro_nonascii}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nonascii]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_escape]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nmchar});
		%item = (__RULE__ => q{macro_nmchar});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_nmchar})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_escape($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_nmchar})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_escape]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$item{q{macro_escape}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_escape]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_nmchar})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_nmchar})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_nmchar});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_nmchar})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::any_item
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"any_item"};
	
	Parse::RecDescent::_trace(q{Trying rule: [any_item]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{any_item})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [URI]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [URI]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::URI($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [URI]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [URI]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{URI}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [URI]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [IDENT]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [IDENT]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::IDENT($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [IDENT]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [IDENT]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{IDENT}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [IDENT]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [NUMBER]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [NUMBER]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::NUMBER($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [NUMBER]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [NUMBER]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{NUMBER}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [NUMBER]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [PERCENTAGE]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [PERCENTAGE]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::PERCENTAGE($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [PERCENTAGE]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [PERCENTAGE]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{PERCENTAGE}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [PERCENTAGE]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [DIMENSION]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [DIMENSION]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::DIMENSION($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [DIMENSION]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [DIMENSION]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{DIMENSION}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [DIMENSION]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [STRING]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[5];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [STRING]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::STRING($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [STRING]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [STRING]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{STRING}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [STRING]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [HASH]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[6];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [HASH]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::HASH($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [HASH]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [HASH]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{HASH}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [HASH]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [UNICODERANGE]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[7];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [UNICODERANGE]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::UNICODERANGE($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [UNICODERANGE]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [UNICODERANGE]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{UNICODERANGE}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [UNICODERANGE]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [INCLUDES]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[8];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [INCLUDES]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::INCLUDES($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [INCLUDES]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [INCLUDES]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{INCLUDES}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [INCLUDES]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [FUNCTION]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[9];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [FUNCTION]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::FUNCTION($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [FUNCTION]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [FUNCTION]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{FUNCTION}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [FUNCTION]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [DASHMATCH]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[10];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [DASHMATCH]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::DASHMATCH($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [DASHMATCH]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [DASHMATCH]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{DASHMATCH}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [DASHMATCH]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['(' any ')']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[11];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['(']},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\(//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [any]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		$expectation->is(q{any})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::any, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [any]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [any]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{any}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: [')']},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{')'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = '('.join('',@{$item[2]}).')';};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['(' any ')']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['[' any ']']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[12];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['[']},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\[//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [any]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		$expectation->is(q{any})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::any, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [any]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [any]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{any}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: [']']},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{']'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\]//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = '['.join('',@{$item[2]}).']';};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['[' any ']']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [DELIM]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any_item})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[13];
		$text = $_[1];
		my $_savetext;
		@item = (q{any_item});
		%item = (__RULE__ => q{any_item});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [DELIM]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any_item})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::DELIM($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [DELIM]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any_item})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [DELIM]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$item{q{DELIM}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1];};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [DELIM]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any_item})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{any_item})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{any_item})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{any_item});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{any_item})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::declaration
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"declaration"};
	
	Parse::RecDescent::_trace(q{Trying rule: [declaration]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{declaration})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $value;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [property ':' WS value]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [property]},
				  Parse::RecDescent::_tracefirst($text),
				  q{declaration})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::property($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [property]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{declaration})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [property]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		$item{q{property}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: [':']},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{':'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\://)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{declaration})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{declaration})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying subrule: [value]},
				  Parse::RecDescent::_tracefirst($text),
				  q{declaration})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{value})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::value($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [value]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{declaration})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [value]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		$item{q{value}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
						$ruleset->add_property(new CSS::Property({
							'property' => $item[1],
							'value' => $item[4],
						}));
						1;
					};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [property ':' WS value]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $value>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{declaration})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{declaration});
		%item = (__RULE__ => q{declaration});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $value>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $value>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{declaration})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{declaration})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{declaration})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{declaration});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{declaration})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_unicode
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_unicode"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_unicode]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_unicode})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/\\[0-9a-f]\{1,6\}[ \\n\\r\\t\\f]?/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_unicode})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_unicode});
		%item = (__RULE__ => q{macro_unicode});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/\\[0-9a-f]\{1,6\}[ \\n\\r\\t\\f]?/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_unicode})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:\[0-9a-f]{1,6}[ \n\r\t\f]?)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_unicode})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/\\[0-9a-f]\{1,6\}[ \\n\\r\\t\\f]?/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_unicode})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_unicode})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_unicode})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_unicode});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_unicode})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_nmstart
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_nmstart"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_nmstart]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_nmstart})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[a-zA-Z]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nmstart});
		%item = (__RULE__ => q{macro_nmstart});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[a-zA-Z]/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[a-zA-Z])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[a-zA-Z]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nonascii]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nmstart});
		%item = (__RULE__ => q{macro_nmstart});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_nonascii]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_nmstart})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nonascii($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nonascii]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_nmstart})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nonascii]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$item{q{macro_nonascii}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nonascii]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_escape]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nmstart});
		%item = (__RULE__ => q{macro_nmstart});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_nmstart})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_escape($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_nmstart})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_escape]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$item{q{macro_escape}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_escape]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_nmstart})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_nmstart})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_nmstart});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_nmstart})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_escape
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_escape"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_escape]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_escape})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_unicode]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_escape})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_escape});
		%item = (__RULE__ => q{macro_escape});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_unicode]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_escape})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_unicode($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_unicode]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_escape})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_unicode]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_escape})
						if defined $::RD_TRACE;
		$item{q{macro_unicode}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_escape})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_unicode]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_escape})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/\\\\[ -~\\200-\\4177777]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_escape})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_escape});
		%item = (__RULE__ => q{macro_escape});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/\\\\[ -~\\200-\\4177777]/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_escape})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:\\[ -~\200-\4177777])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_escape})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/\\\\[ -~\\200-\\4177777]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_escape})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_escape})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_escape})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_escape});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_escape})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_name
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_name"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_name]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_name})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nmchar]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_name})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_name});
		%item = (__RULE__ => q{macro_name});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [macro_nmchar]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_name})
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::macro_nmchar, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [macro_nmchar]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_name})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [macro_nmchar]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_name})
						if defined $::RD_TRACE;
		$item{q{macro_nmchar}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_name})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = join('',@{$item[1]})};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nmchar]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_name})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_name})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_name})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_name});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_name})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_block
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_block"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_block]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_block})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [any]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_block});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [any]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_block})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::any($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [any]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_block})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [any]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$item{q{any}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [any]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [block]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_block});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [block]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_block})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::block($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [block]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_block})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [block]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$item{q{block}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [block]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [ATKEYWORD WS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_block});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [ATKEYWORD]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_block})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::ATKEYWORD($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [ATKEYWORD]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_block})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [ATKEYWORD]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$item{q{ATKEYWORD}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_block})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_block})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		



		Parse::RecDescent::_trace(q{>>Matched production: [ATKEYWORD WS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [';']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_block});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [';']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\;//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		


		Parse::RecDescent::_trace(q{>>Matched production: [';']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_block})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_block})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_block});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_block})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_w
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_w"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_w]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_w})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[ \\t\\r\\n\\f]*/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_w})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_w});
		%item = (__RULE__ => q{macro_w});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[ \\t\\r\\n\\f]*/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_w})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[ \t\r\n\f]*)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_w})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[ \\t\\r\\n\\f]*/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_w})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_w})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_w})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_w});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_w})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::PERCENTAGE
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"PERCENTAGE"};
	
	Parse::RecDescent::_trace(q{Trying rule: [PERCENTAGE]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{PERCENTAGE})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_num '%']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{PERCENTAGE})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{PERCENTAGE});
		%item = (__RULE__ => q{PERCENTAGE});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_num]},
				  Parse::RecDescent::_tracefirst($text),
				  q{PERCENTAGE})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_num($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_num]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{PERCENTAGE})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_num]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{PERCENTAGE})
						if defined $::RD_TRACE;
		$item{q{macro_num}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: ['%']},
					  Parse::RecDescent::_tracefirst($text),
					  q{PERCENTAGE})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'%'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\%//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{PERCENTAGE})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1].'&'};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_num '%']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{PERCENTAGE})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{PERCENTAGE})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{PERCENTAGE})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{PERCENTAGE});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{PERCENTAGE})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::UNICODERANGE
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"UNICODERANGE"};
	
	Parse::RecDescent::_trace(q{Trying rule: [UNICODERANGE]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{UNICODERANGE})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/U\\+[0-9A-F?]\{1,6\}(-[0-9A-F]\{1,6\})?/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{UNICODERANGE})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{UNICODERANGE});
		%item = (__RULE__ => q{UNICODERANGE});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/U\\+[0-9A-F?]\{1,6\}(-[0-9A-F]\{1,6\})?/]}, Parse::RecDescent::_tracefirst($text),
					  q{UNICODERANGE})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:U\+[0-9A-F?]{1,6}(-[0-9A-F]{1,6})?)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{UNICODERANGE})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/U\\+[0-9A-F?]\{1,6\}(-[0-9A-F]\{1,6\})?/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{UNICODERANGE})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{UNICODERANGE})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{UNICODERANGE})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{UNICODERANGE});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{UNICODERANGE})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::URI
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"URI"};
	
	Parse::RecDescent::_trace(q{Trying rule: [URI]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{URI})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['url(' macro_w macro_string macro_w ')']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{URI})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{URI});
		%item = (__RULE__ => q{URI});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['url(']},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\Aurl\(//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro_w]},
				  Parse::RecDescent::_tracefirst($text),
				  q{URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_w})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_w($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_w]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_w]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$item{q{macro_w}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [macro_string]},
				  Parse::RecDescent::_tracefirst($text),
				  q{URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_string})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_string($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_string]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_string]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$item{q{macro_string}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [macro_w]},
				  Parse::RecDescent::_tracefirst($text),
				  q{URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_w})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_w($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_w]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_w]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$item{q{macro_w}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: [')']},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{')'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = "url(".$item[3].")"};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['url(' macro_w macro_string macro_w ')']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['url(' macro_w /[!#$%&*-~]/, or macro_nonascii, or macro_escape macro_w ')']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{URI})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{URI});
		%item = (__RULE__ => q{URI});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['url(']},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\Aurl\(//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro_w]},
				  Parse::RecDescent::_tracefirst($text),
				  q{URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_w})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_w($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_w]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_w]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$item{q{macro_w}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying repeated subrule: [/[!#$%&*-~]/, or macro_nonascii, or macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{URI})
					if defined $::RD_TRACE;
		$expectation->is(q{/[!#$%&*-~]/, or macro_nonascii, or macro_escape})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_2_of_rule_URI, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [/[!#$%&*-~]/, or macro_nonascii, or macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{URI})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_2_of_rule_URI]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$item{q{/[!#$%&*-~]/, or macro_nonascii, or macro_escape}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying subrule: [macro_w]},
				  Parse::RecDescent::_tracefirst($text),
				  q{URI})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_w})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_w($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_w]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{URI})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_w]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$item{q{macro_w}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: [')']},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{')'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = "url(".join('',@{$item[3]}).")"};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['url(' macro_w /[!#$%&*-~]/, or macro_nonascii, or macro_escape macro_w ')']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{URI})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{URI})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{URI})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{URI});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{URI})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::DIMENSION
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"DIMENSION"};
	
	Parse::RecDescent::_trace(q{Trying rule: [DIMENSION]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{DIMENSION})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_num macro_ident]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{DIMENSION})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{DIMENSION});
		%item = (__RULE__ => q{DIMENSION});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_num]},
				  Parse::RecDescent::_tracefirst($text),
				  q{DIMENSION})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_num($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_num]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{DIMENSION})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_num]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{DIMENSION})
						if defined $::RD_TRACE;
		$item{q{macro_num}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [macro_ident]},
				  Parse::RecDescent::_tracefirst($text),
				  q{DIMENSION})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_ident})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_ident($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_ident]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{DIMENSION})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_ident]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{DIMENSION})
						if defined $::RD_TRACE;
		$item{q{macro_ident}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{DIMENSION})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1].$item[2]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_num macro_ident]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{DIMENSION})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{DIMENSION})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{DIMENSION})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{DIMENSION});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{DIMENSION})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::statement
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"statement"};
	
	Parse::RecDescent::_trace(q{Trying rule: [statement]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{statement})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [ruleset]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [ruleset]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::ruleset($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [ruleset]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [ruleset]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement})
						if defined $::RD_TRACE;
		$item{q{ruleset}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {4;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [ruleset]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [atrule]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{statement})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{statement});
		%item = (__RULE__ => q{statement});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [atrule]},
				  Parse::RecDescent::_tracefirst($text),
				  q{statement})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::atrule($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [atrule]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{statement})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [atrule]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{statement})
						if defined $::RD_TRACE;
		$item{q{atrule}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {5;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [atrule]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{statement})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{statement})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{statement})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{statement});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{statement})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::value
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"value"};
	
	Parse::RecDescent::_trace(q{Trying rule: [value]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{value})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [any, or block, or ATKEYWORD]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{value})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{value});
		%item = (__RULE__ => q{value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [any, or block, or ATKEYWORD]},
				  Parse::RecDescent::_tracefirst($text),
				  q{value})
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_value, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [any, or block, or ATKEYWORD]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{value})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_value]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{value})
						if defined $::RD_TRACE;
		$item{q{any, or block, or ATKEYWORD}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{value})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = join('',@{$item[1]})};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [any, or block, or ATKEYWORD]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{value})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{value})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{value})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{value});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{value})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::DELIM
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"DELIM"};
	
	Parse::RecDescent::_trace(q{Trying rule: [DELIM]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{DELIM})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[^0-9a-zA-Z\\\{\\\}\\(\\)\\[\\];]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{DELIM})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{DELIM});
		%item = (__RULE__ => q{DELIM});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[^0-9a-zA-Z\\\{\\\}\\(\\)\\[\\];]/]}, Parse::RecDescent::_tracefirst($text),
					  q{DELIM})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[^0-9a-zA-Z\{\}\(\)\[\];])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{DELIM})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[^0-9a-zA-Z\\\{\\\}\\(\\)\\[\\];]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{DELIM})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{DELIM})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{DELIM})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{DELIM});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{DELIM})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_stylesheet
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_stylesheet"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_stylesheet]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_stylesheet})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [WS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_stylesheet});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_stylesheet});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_stylesheet})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::WS($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_stylesheet})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [WS]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {2;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [WS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [statement]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_stylesheet});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_stylesheet});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [statement]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_stylesheet})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::statement($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [statement]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_stylesheet})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [statement]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		$item{q{statement}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {3;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [statement]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_stylesheet})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_stylesheet})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_stylesheet});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_stylesheet})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::HASH
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"HASH"};
	
	Parse::RecDescent::_trace(q{Trying rule: [HASH]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{HASH})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['#' macro_name]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{HASH})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{HASH});
		%item = (__RULE__ => q{HASH});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['#']},
					  Parse::RecDescent::_tracefirst($text),
					  q{HASH})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\#//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro_name]},
				  Parse::RecDescent::_tracefirst($text),
				  q{HASH})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_name})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_name($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_name]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{HASH})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_name]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{HASH})
						if defined $::RD_TRACE;
		$item{q{macro_name}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{HASH})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = '#'.$item[2]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['#' macro_name]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{HASH})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{HASH})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{HASH})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{HASH});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{HASH})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::stylesheet
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"stylesheet"};
	
	Parse::RecDescent::_trace(q{Trying rule: [stylesheet]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{stylesheet})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $all_rulesets;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [WS, or statement]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{stylesheet})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{stylesheet});
		%item = (__RULE__ => q{stylesheet});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS, or statement]},
				  Parse::RecDescent::_tracefirst($text),
				  q{stylesheet})
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_stylesheet, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS, or statement]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{stylesheet})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_stylesheet]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{stylesheet})
						if defined $::RD_TRACE;
		$item{q{WS, or statement}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{stylesheet})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $all_rulesets;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [WS, or statement]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{stylesheet})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $all_rulesets>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{stylesheet})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{stylesheet});
		%item = (__RULE__ => q{stylesheet});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $all_rulesets>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{stylesheet})
						if defined $::RD_TRACE;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $all_rulesets>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{stylesheet})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{stylesheet})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{stylesheet})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{stylesheet});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{stylesheet})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::ruleset
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"ruleset"};
	
	Parse::RecDescent::_trace(q{Trying rule: [ruleset]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{ruleset})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	 local $ruleset = new CSS::Style();;


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [selector '\{' WS declaration ';' '\}' WS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{ruleset})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{ruleset});
		%item = (__RULE__ => q{ruleset});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [selector]},
				  Parse::RecDescent::_tracefirst($text),
				  q{ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::selector, 0, 1, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [selector]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [selector]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$item{q{selector}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\{'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\{//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying repeated subrule: [declaration]},
				  Parse::RecDescent::_tracefirst($text),
				  q{ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{declaration})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::declaration, 0, 1, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [declaration]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [declaration]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$item{q{declaration}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying repeated subrule: [';']},
				  Parse::RecDescent::_tracefirst($text),
				  q{ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{';'})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_ruleset, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [';']>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_ruleset]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$item{q{';'}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\}'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{ruleset})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{ruleset})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {push @{$all_rulesets}, $ruleset; 1;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [selector '\{' WS declaration ';' '\}' WS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [<rulevar: local $ruleset = new CSS::Style();>]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{ruleset})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{ruleset});
		%item = (__RULE__ => q{ruleset});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{>>Rejecting production<< (found <rulevar: local $ruleset = new CSS::Style();>)},
					 Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		

		$_tok = undef;
		
		last unless defined $_tok;


		Parse::RecDescent::_trace(q{>>Matched production: [<rulevar: local $ruleset = new CSS::Style();>]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{ruleset})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{ruleset})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{ruleset})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{ruleset});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{ruleset})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::any
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"any"};
	
	Parse::RecDescent::_trace(q{Trying rule: [any]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{any})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [any_item OWS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{any})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{any});
		%item = (__RULE__ => q{any});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [any_item]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::any_item($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [any_item]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [any_item]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any})
						if defined $::RD_TRACE;
		$item{q{any_item}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [OWS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{any})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{OWS})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::OWS($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [OWS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{any})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [OWS]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{any})
						if defined $::RD_TRACE;
		$item{q{OWS}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{any})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1].$item[2]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [any_item OWS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{any})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{any})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{any})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{any});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{any})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_num
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_num"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_num]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_num})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[0-9]+|[0-9]*\\.[0-9]+/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_num})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_num});
		%item = (__RULE__ => q{macro_num});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[0-9]+|[0-9]*\\.[0-9]+/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_num})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[0-9]+|[0-9]*\.[0-9]+)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_num})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[0-9]+|[0-9]*\\.[0-9]+/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_num})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_num})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_num})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_num});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_num})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::WS
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"WS"};
	
	Parse::RecDescent::_trace(q{Trying rule: [WS]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{WS})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[ \\t\\r\\n\\f]+/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{WS})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{WS});
		%item = (__RULE__ => q{WS});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[ \\t\\r\\n\\f]+/]}, Parse::RecDescent::_tracefirst($text),
					  q{WS})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[ \t\r\n\f]+)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{WS})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = ' ';};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[ \\t\\r\\n\\f]+/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{WS})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{WS})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{WS})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{WS});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{WS})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::IDENT
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"IDENT"};
	
	Parse::RecDescent::_trace(q{Trying rule: [IDENT]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{IDENT})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_ident]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{IDENT})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{IDENT});
		%item = (__RULE__ => q{IDENT});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_ident]},
				  Parse::RecDescent::_tracefirst($text),
				  q{IDENT})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_ident($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_ident]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{IDENT})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_ident]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{IDENT})
						if defined $::RD_TRACE;
		$item{q{macro_ident}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{IDENT})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_ident]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{IDENT})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{IDENT})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{IDENT})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{IDENT});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{IDENT})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_ident
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_ident"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_ident]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_ident})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nmstart macro_nmchar]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_ident})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_ident});
		%item = (__RULE__ => q{macro_ident});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_nmstart]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_ident})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nmstart($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nmstart]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_ident})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nmstart]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_ident})
						if defined $::RD_TRACE;
		$item{q{macro_nmstart}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying repeated subrule: [macro_nmchar]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_ident})
					if defined $::RD_TRACE;
		$expectation->is(q{macro_nmchar})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::macro_nmchar, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [macro_nmchar]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_ident})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [macro_nmchar]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_ident})
						if defined $::RD_TRACE;
		$item{q{macro_nmchar}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_ident})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]; if (scalar(@{$item[2]}) > 0){$return .= join('',@{$item[2]});} 1;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nmstart macro_nmchar]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_ident})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_ident})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_ident})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_ident});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_ident})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::block
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"block"};
	
	Parse::RecDescent::_trace(q{Trying rule: [block]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{block})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\{' WS any, or block, or ATKEYWORD, or ';' '\}' WS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{block})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{block});
		%item = (__RULE__ => q{block});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\{']},
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\{//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{block})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{block})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying repeated subrule: [any, or block, or ATKEYWORD, or ';']},
				  Parse::RecDescent::_tracefirst($text),
				  q{block})
					if defined $::RD_TRACE;
		$expectation->is(q{any, or block, or ATKEYWORD, or ';'})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_block, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [any, or block, or ATKEYWORD, or ';']>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{block})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_block]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		$item{q{any, or block, or ATKEYWORD, or ';'}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['\}']},
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'\}'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\}//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{block})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{block})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {print "block\n"};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['\{' WS any, or block, or ATKEYWORD, or ';' '\}' WS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{block})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{block})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{block})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{block});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{block})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::STRING
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"STRING"};
	
	Parse::RecDescent::_trace(q{Trying rule: [STRING]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{STRING})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_string]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{STRING})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{STRING});
		%item = (__RULE__ => q{STRING});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_string]},
				  Parse::RecDescent::_tracefirst($text),
				  q{STRING})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_string($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_string]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{STRING})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_string]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{STRING})
						if defined $::RD_TRACE;
		$item{q{macro_string}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{STRING})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_string]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{STRING})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{STRING})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{STRING})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{STRING});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{STRING})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_atrule
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_atrule"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_atrule]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_atrule})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [block]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_atrule});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_atrule});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [block]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_atrule})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::block($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [block]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_atrule})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [block]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		$item{q{block}} = $_tok;
		push @item, $_tok;
		
		}


		Parse::RecDescent::_trace(q{>>Matched production: [block]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [';' WS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_atrule});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_atrule});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [';']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\;//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_atrule})
					if defined $::RD_TRACE;
		$expectation->is(q{WS})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_atrule})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		



		Parse::RecDescent::_trace(q{>>Matched production: [';' WS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_atrule})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_atrule})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_atrule});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_atrule})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::selector
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"selector"};
	
	Parse::RecDescent::_trace(q{Trying rule: [selector]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{selector})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [any]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{selector})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{selector});
		%item = (__RULE__ => q{selector});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [any]},
				  Parse::RecDescent::_tracefirst($text),
				  q{selector})
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::any, 1, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [any]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{selector})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [any]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{selector})
						if defined $::RD_TRACE;
		$item{q{any}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{selector})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {
						$ruleset->add_selector(new CSS::Selector({'name' => $_})) 
						for(map{s/^\s*(.*?)\s*$/$1/;$_}split /\s*,\s*/, join('',@{$item[1]}));
						1;
					};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [any]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{selector})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{selector})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{selector})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{selector});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{selector})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::property
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"property"};
	
	Parse::RecDescent::_trace(q{Trying rule: [property]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{property})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [IDENT OWS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{property})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{property});
		%item = (__RULE__ => q{property});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [IDENT]},
				  Parse::RecDescent::_tracefirst($text),
				  q{property})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::IDENT($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [IDENT]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{property})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [IDENT]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{property})
						if defined $::RD_TRACE;
		$item{q{IDENT}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [OWS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{property})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{OWS})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::OWS($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [OWS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{property})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [OWS]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{property})
						if defined $::RD_TRACE;
		$item{q{OWS}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{property})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [IDENT OWS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{property})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{property})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{property})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{property});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{property})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::FUNCTION
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"FUNCTION"};
	
	Parse::RecDescent::_trace(q{Trying rule: [FUNCTION]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{FUNCTION})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_ident '(']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{FUNCTION})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{FUNCTION});
		%item = (__RULE__ => q{FUNCTION});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_ident]},
				  Parse::RecDescent::_tracefirst($text),
				  q{FUNCTION})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_ident($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_ident]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{FUNCTION})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_ident]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{FUNCTION})
						if defined $::RD_TRACE;
		$item{q{macro_ident}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying terminal: ['(']},
					  Parse::RecDescent::_tracefirst($text),
					  q{FUNCTION})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'('})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\(//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{FUNCTION})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1].'('};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_ident '(']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{FUNCTION})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{FUNCTION})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{FUNCTION})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{FUNCTION});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{FUNCTION})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::OWS
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"OWS"};
	
	Parse::RecDescent::_trace(q{Trying rule: [OWS]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{OWS})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [WS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{OWS})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{OWS});
		%item = (__RULE__ => q{OWS});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying repeated subrule: [WS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{OWS})
					if defined $::RD_TRACE;
		$expectation->is(q{})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::WS, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [WS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{OWS})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [WS]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{OWS})
						if defined $::RD_TRACE;
		$item{q{WS}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{OWS})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = ''; if (scalar(@{$item[1]}) > 0){$return = ' ';} 1;};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [WS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{OWS})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{OWS})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{OWS})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{OWS});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{OWS})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_nl
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_nl"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_nl]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_nl})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/\\n|\\r\\n|\\r|\\f/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_nl})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_nl});
		%item = (__RULE__ => q{macro_nl});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/\\n|\\r\\n|\\r|\\f/]}, Parse::RecDescent::_tracefirst($text),
					  q{macro_nl})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:\n|\r\n|\r|\f)//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nl})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/\\n|\\r\\n|\\r|\\f/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_nl})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_nl})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_nl})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_nl});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_nl})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_string1
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_string1"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_string1]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_string1})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['"' /[\\t !#$%&(-~]/, or '\\', or ''', or macro_nonascii, or macro_escape '"']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_string1})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_string1});
		%item = (__RULE__ => q{macro_string1});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['"']},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string1})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\"//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [/[\\t !#$%&(-~]/, or '\\', or ''', or macro_nonascii, or macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_string1})
					if defined $::RD_TRACE;
		$expectation->is(q{/[\\t !#$%&(-~]/, or '\\', or ''', or macro_nonascii, or macro_escape})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_macro_string1, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [/[\\t !#$%&(-~]/, or '\\', or ''', or macro_nonascii, or macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_string1})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_macro_string1]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string1})
						if defined $::RD_TRACE;
		$item{q{/[\\t !#$%&(-~]/, or '\\', or ''', or macro_nonascii, or macro_escape}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: ['"']},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string1})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'"'})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\"//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string1})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = '"'.join('', @{$item[2]}).'"'};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['"' /[\\t !#$%&(-~]/, or '\\', or ''', or macro_nonascii, or macro_escape '"']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string1})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_string1})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_string1})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_string1});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_string1})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_string2
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_string2"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_string2]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_string2})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [''' /[\\t !#$%&(-~]/, or '\\', or '"', or macro_nonascii, or macro_escape ''']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_string2})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_string2});
		%item = (__RULE__ => q{macro_string2});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [''']},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string2})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "'"; 1 } and
		     substr($text,0,length($_tok)) eq $_tok and
		     do { substr($text,0,length($_tok)) = ""; 1; }
		)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $_tok . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying repeated subrule: [/[\\t !#$%&(-~]/, or '\\', or '"', or macro_nonascii, or macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_string2})
					if defined $::RD_TRACE;
		$expectation->is(q{/[\\t !#$%&(-~]/, or '\\', or '"', or macro_nonascii, or macro_escape})->at($text);
		
		unless (defined ($_tok = $thisparser->_parserepeat($text, \&Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_macro_string2, 0, 100000000, $_noactions,$expectation,undef))) 
		{
			Parse::RecDescent::_trace(q{<<Didn't match repeated subrule: [/[\\t !#$%&(-~]/, or '\\', or '"', or macro_nonascii, or macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_string2})
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched repeated subrule: [_alternation_1_of_production_1_of_rule_macro_string2]<< (}
					. @$_tok . q{ times)},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string2})
						if defined $::RD_TRACE;
		$item{q{/[\\t !#$%&(-~]/, or '\\', or '"', or macro_nonascii, or macro_escape}} = $_tok;
		push @item, $_tok;
		


		Parse::RecDescent::_trace(q{Trying terminal: [''']},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string2})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{'''})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "'"; 1 } and
		     substr($text,0,length($_tok)) eq $_tok and
		     do { substr($text,0,length($_tok)) = ""; 1; }
		)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $_tok . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING2__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string2})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {return "'".join('', @{$item[2]})."'"};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [''' /[\\t !#$%&(-~]/, or '\\', or '"', or macro_nonascii, or macro_escape ''']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string2})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_string2})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_string2})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_string2});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_string2})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::ATKEYWORD
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"ATKEYWORD"};
	
	Parse::RecDescent::_trace(q{Trying rule: [ATKEYWORD]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{ATKEYWORD})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['@' macro_ident]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{ATKEYWORD})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{ATKEYWORD});
		%item = (__RULE__ => q{ATKEYWORD});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['@']},
					  Parse::RecDescent::_tracefirst($text),
					  q{ATKEYWORD})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\@//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro_ident]},
				  Parse::RecDescent::_tracefirst($text),
				  q{ATKEYWORD})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_ident})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_ident($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_ident]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{ATKEYWORD})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_ident]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{ATKEYWORD})
						if defined $::RD_TRACE;
		$item{q{macro_ident}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{ATKEYWORD})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = '@'.$item[2]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['@' macro_ident]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{ATKEYWORD})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{ATKEYWORD})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{ATKEYWORD})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{ATKEYWORD});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{ATKEYWORD})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::macro_string
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"macro_string"};
	
	Parse::RecDescent::_trace(q{Trying rule: [macro_string]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{macro_string})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_string1]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_string})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_string});
		%item = (__RULE__ => q{macro_string});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_string1]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_string})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_string1($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_string1]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_string})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_string1]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string})
						if defined $::RD_TRACE;
		$item{q{macro_string1}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_string1]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_string2]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{macro_string})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{macro_string});
		%item = (__RULE__ => q{macro_string});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_string2]},
				  Parse::RecDescent::_tracefirst($text),
				  q{macro_string})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_string2($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_string2]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{macro_string})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_string2]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string})
						if defined $::RD_TRACE;
		$item{q{macro_string2}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_string2]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{macro_string})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{macro_string})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{macro_string})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{macro_string});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{macro_string})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_macro_string1
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_macro_string1"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_macro_string1]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_macro_string1})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[\\t !#$%&(-~]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string1});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string1});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[\\t !#$%&(-~]/]}, Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[\t !#$%&(-~])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[\\t !#$%&(-~]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\\' macro_nl]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string1});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string1});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\\']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\\//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro_nl]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_macro_string1})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_nl})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nl($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nl]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_macro_string1})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nl]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$item{q{macro_nl}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = ''};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['\\' macro_nl]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [''']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string1});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string1});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [''']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   do { $_tok = "'"; 1 } and
		     substr($text,0,length($_tok)) eq $_tok and
		     do { substr($text,0,length($_tok)) = ""; 1; }
		)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $_tok . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$_tok;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [''']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nonascii]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string1});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string1});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_nonascii]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_macro_string1})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nonascii($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nonascii]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_macro_string1})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nonascii]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$item{q{macro_nonascii}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nonascii]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_escape]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string1});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string1});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_macro_string1})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_escape($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_macro_string1})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_escape]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$item{q{macro_escape}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_escape]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_macro_string1})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_macro_string1})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_macro_string1});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_macro_string1})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_value
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_value"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_value]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_value})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [any]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_value});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [any]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_value})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::any($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [any]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_value})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [any]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$item{q{any}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [any]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [block]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_value});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [block]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_value})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::block($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [block]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_value})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [block]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$item{q{block}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [block]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [ATKEYWORD OWS]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_value});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_value});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [ATKEYWORD]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_value})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::ATKEYWORD($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [ATKEYWORD]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_value})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [ATKEYWORD]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$item{q{ATKEYWORD}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying subrule: [OWS]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_value})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{OWS})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::OWS($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [OWS]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_value})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [OWS]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$item{q{OWS}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1].$item[2]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [ATKEYWORD OWS]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_value})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_value})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_value});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_value})
	}
	$_[1] = $text;
	return $return;
}

# ARGS ARE: ($parser, $text; $repeating, $_noactions, \@args)
sub Parse::RecDescent::namespace000001::_alternation_1_of_production_1_of_rule_macro_string2
{
	my $thisparser = $_[0];
	$ERRORS = 0;
	my $thisrule = $thisparser->{"rules"}{"_alternation_1_of_production_1_of_rule_macro_string2"};
	
	Parse::RecDescent::_trace(q{Trying rule: [_alternation_1_of_production_1_of_rule_macro_string2]},
				  Parse::RecDescent::_tracefirst($_[1]),
				  q{_alternation_1_of_production_1_of_rule_macro_string2})
					if defined $::RD_TRACE;

	
	my $err_at = @{$thisparser->{errors}};

	my $score;
	my $score_return;
	my $_tok;
	my $return = undef;
	my $_matched=0;
	my $commit=0;
	my @item = ();
	my %item = ();
	my $repeating =  defined($_[2]) && $_[2];
	my $_noactions = defined($_[3]) && $_[3];
 	my @arg =        defined $_[4] ? @{ &{$_[4]} } : ();
	my %arg =        ($#arg & 01) ? @arg : (@arg, undef);
	my $text;
	my $lastsep="";
	my $expectation = new Parse::RecDescent::Expectation($thisrule->expected());
	$expectation->at($_[1]);
	
	my $thisline;
	tie $thisline, q{Parse::RecDescent::LineCounter}, \$text, $thisparser;

	

	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [/[\\t !#$%&(-~]/]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[0];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string2});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string2});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: [/[\\t !#$%&(-~]/]}, Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A(?:[\t !#$%&(-~])//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(q{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;

			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
					if defined $::RD_TRACE;
		push @item, $item{__PATTERN1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [/[\\t !#$%&(-~]/]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['\\' macro_nl]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[1];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string2});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string2});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['\\']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\\//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying subrule: [macro_nl]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_macro_string2})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{macro_nl})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nl($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nl]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_macro_string2})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nl]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$item{q{macro_nl}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = ''};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['\\' macro_nl]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: ['"']},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[2];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string2});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string2});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying terminal: ['"']},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$lastsep = "";
		$expectation->is(q{})->at($text);
		

		unless ($text =~ s/\A($skip)/$lastsep=$1 and ""/e and   $text =~ s/\A\"//)
		{
			
			$expectation->failed();
			Parse::RecDescent::_trace(qq{<<Didn't match terminal>>},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched terminal<< (return value: [}
						. $& . q{])},
						  Parse::RecDescent::_tracefirst($text))
							if defined $::RD_TRACE;
		push @item, $item{__STRING1__}=$&;
		

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: ['"']<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_nonascii]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[3];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string2});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string2});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_nonascii]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_macro_string2})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_nonascii($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_nonascii]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_macro_string2})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_nonascii]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$item{q{macro_nonascii}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_nonascii]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


	while (!$_matched && !$commit)
	{
		
		Parse::RecDescent::_trace(q{Trying production: [macro_escape]},
					  Parse::RecDescent::_tracefirst($_[1]),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		my $thisprod = $thisrule->{"prods"}[4];
		$text = $_[1];
		my $_savetext;
		@item = (q{_alternation_1_of_production_1_of_rule_macro_string2});
		%item = (__RULE__ => q{_alternation_1_of_production_1_of_rule_macro_string2});
		my $repcount = 0;


		Parse::RecDescent::_trace(q{Trying subrule: [macro_escape]},
				  Parse::RecDescent::_tracefirst($text),
				  q{_alternation_1_of_production_1_of_rule_macro_string2})
					if defined $::RD_TRACE;
		if (1) { no strict qw{refs};
		$expectation->is(q{})->at($text);
		unless (defined ($_tok = Parse::RecDescent::namespace000001::macro_escape($thisparser,$text,$repeating,$_noactions,undef)))
		{
			
			Parse::RecDescent::_trace(q{<<Didn't match subrule: [macro_escape]>>},
						  Parse::RecDescent::_tracefirst($text),
						  q{_alternation_1_of_production_1_of_rule_macro_string2})
							if defined $::RD_TRACE;
			$expectation->failed();
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched subrule: [macro_escape]<< (return value: [}
					. $_tok . q{]},
					  
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$item{q{macro_escape}} = $_tok;
		push @item, $_tok;
		
		}

		Parse::RecDescent::_trace(q{Trying action},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		

		$_tok = ($_noactions) ? 0 : do {$return = $item[1]};
		unless (defined $_tok)
		{
			Parse::RecDescent::_trace(q{<<Didn't match action>> (return value: [undef])})
					if defined $::RD_TRACE;
			last;
		}
		Parse::RecDescent::_trace(q{>>Matched action<< (return value: [}
					  . $_tok . q{])}, $text)
						if defined $::RD_TRACE;
		push @item, $_tok;
		$item{__ACTION1__}=$_tok;
		


		Parse::RecDescent::_trace(q{>>Matched production: [macro_escape]<<},
					  Parse::RecDescent::_tracefirst($text),
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$_matched = 1;
		last;
	}


        unless ( $_matched || defined($return) || defined($score) )
	{
		

		$_[1] = $text;	# NOT SURE THIS IS NEEDED
		Parse::RecDescent::_trace(q{<<Didn't match rule>>},
					 Parse::RecDescent::_tracefirst($_[1]),
					 q{_alternation_1_of_production_1_of_rule_macro_string2})
					if defined $::RD_TRACE;
		return undef;
	}
	if (!defined($return) && defined($score))
	{
		Parse::RecDescent::_trace(q{>>Accepted scored production<<}, "",
					  q{_alternation_1_of_production_1_of_rule_macro_string2})
						if defined $::RD_TRACE;
		$return = $score_return;
	}
	splice @{$thisparser->{errors}}, $err_at;
	$return = $item[$#item] unless defined $return;
	if (defined $::RD_TRACE)
	{
		Parse::RecDescent::_trace(q{>>Matched rule<< (return value: [} .
					  $return . q{])}, "",
					  q{_alternation_1_of_production_1_of_rule_macro_string2});
		Parse::RecDescent::_trace(q{(consumed: [} .
					  Parse::RecDescent::_tracemax(substr($_[1],0,-length($text))) . q{])}, 
					  Parse::RecDescent::_tracefirst($text),
					  , q{_alternation_1_of_production_1_of_rule_macro_string2})
	}
	$_[1] = $text;
	return $return;
}
}
package CSS::Parse::CompiledGrammar; sub new { my $self = bless( {
                 '_AUTOTREE' => undef,
                 'rules' => {
                              '_alternation_1_of_production_2_of_rule_URI' => bless( {
                                                                                       'impcount' => 0,
                                                                                       'line' => '111',
                                                                                       'prods' => [
                                                                                                    bless( {
                                                                                                             'dircount' => 0,
                                                                                                             'uncommit' => undef,
                                                                                                             'patcount' => 1,
                                                                                                             'strcount' => 0,
                                                                                                             'number' => 0,
                                                                                                             'error' => undef,
                                                                                                             'line' => undef,
                                                                                                             'items' => [
                                                                                                                          bless( {
                                                                                                                                   'description' => '/[!#$%&*-~]/',
                                                                                                                                   'pattern' => '[!#$%&*-~]',
                                                                                                                                   'mod' => '',
                                                                                                                                   'hashname' => '__PATTERN1__',
                                                                                                                                   'lookahead' => 0,
                                                                                                                                   'ldelim' => '/',
                                                                                                                                   'line' => '112',
                                                                                                                                   'rdelim' => '/'
                                                                                                                                 }, 'Parse::RecDescent::Token' ),
                                                                                                                          bless( {
                                                                                                                                   'line' => '112',
                                                                                                                                   'code' => '{$return = $item[1]}',
                                                                                                                                   'hashname' => '__ACTION1__',
                                                                                                                                   'lookahead' => 0
                                                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                                                        ],
                                                                                                             'actcount' => 1
                                                                                                           }, 'Parse::RecDescent::Production' ),
                                                                                                    bless( {
                                                                                                             'dircount' => 0,
                                                                                                             'uncommit' => undef,
                                                                                                             'patcount' => 0,
                                                                                                             'strcount' => 0,
                                                                                                             'number' => 1,
                                                                                                             'error' => undef,
                                                                                                             'line' => '113',
                                                                                                             'items' => [
                                                                                                                          bless( {
                                                                                                                                   'line' => '113',
                                                                                                                                   'subrule' => 'macro_nonascii',
                                                                                                                                   'argcode' => undef,
                                                                                                                                   'implicit' => undef,
                                                                                                                                   'matchrule' => 0,
                                                                                                                                   'lookahead' => 0
                                                                                                                                 }, 'Parse::RecDescent::Subrule' ),
                                                                                                                          bless( {
                                                                                                                                   'line' => '113',
                                                                                                                                   'code' => '{$return = $item[1]}',
                                                                                                                                   'hashname' => '__ACTION1__',
                                                                                                                                   'lookahead' => 0
                                                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                                                        ],
                                                                                                             'actcount' => 1
                                                                                                           }, 'Parse::RecDescent::Production' ),
                                                                                                    bless( {
                                                                                                             'dircount' => 0,
                                                                                                             'uncommit' => undef,
                                                                                                             'patcount' => 0,
                                                                                                             'strcount' => 0,
                                                                                                             'number' => 2,
                                                                                                             'error' => undef,
                                                                                                             'line' => '114',
                                                                                                             'items' => [
                                                                                                                          bless( {
                                                                                                                                   'line' => '114',
                                                                                                                                   'subrule' => 'macro_escape',
                                                                                                                                   'argcode' => undef,
                                                                                                                                   'implicit' => undef,
                                                                                                                                   'matchrule' => 0,
                                                                                                                                   'lookahead' => 0
                                                                                                                                 }, 'Parse::RecDescent::Subrule' ),
                                                                                                                          bless( {
                                                                                                                                   'line' => '114',
                                                                                                                                   'code' => '{$return = $item[1]}',
                                                                                                                                   'hashname' => '__ACTION1__',
                                                                                                                                   'lookahead' => 0
                                                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                                                        ],
                                                                                                             'actcount' => 1
                                                                                                           }, 'Parse::RecDescent::Production' )
                                                                                                  ],
                                                                                       'calls' => [
                                                                                                    'macro_nonascii',
                                                                                                    'macro_escape'
                                                                                                  ],
                                                                                       'opcount' => 0,
                                                                                       'changed' => 0,
                                                                                       'vars' => '',
                                                                                       'name' => '_alternation_1_of_production_2_of_rule_URI'
                                                                                     }, 'Parse::RecDescent::Rule' ),
                              'NUMBER' => bless( {
                                                   'impcount' => 0,
                                                   'line' => '63',
                                                   'prods' => [
                                                                bless( {
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'number' => 0,
                                                                         'error' => undef,
                                                                         'line' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'line' => '63',
                                                                                               'subrule' => 'macro_num',
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'line' => '63',
                                                                                               'code' => '{$return = $item[1]}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'actcount' => 1
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => [
                                                                'macro_num'
                                                              ],
                                                   'opcount' => 0,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'NUMBER'
                                                 }, 'Parse::RecDescent::Rule' ),
                              'atrule' => bless( {
                                                   'impcount' => 1,
                                                   'line' => '13',
                                                   'prods' => [
                                                                bless( {
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'number' => 0,
                                                                         'error' => undef,
                                                                         'line' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'line' => '13',
                                                                                               'subrule' => 'ATKEYWORD',
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'min' => 0,
                                                                                               'argcode' => undef,
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'WS',
                                                                                               'line' => '13',
                                                                                               'expected' => undef,
                                                                                               'max' => 100000000,
                                                                                               'repspec' => 's?'
                                                                                             }, 'Parse::RecDescent::Repetition' ),
                                                                                      bless( {
                                                                                               'min' => 0,
                                                                                               'argcode' => undef,
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0,
                                                                                               'subrule' => 'any',
                                                                                               'line' => '13',
                                                                                               'expected' => undef,
                                                                                               'max' => 100000000,
                                                                                               'repspec' => 's?'
                                                                                             }, 'Parse::RecDescent::Repetition' ),
                                                                                      bless( {
                                                                                               'line' => '13',
                                                                                               'subrule' => '_alternation_1_of_production_1_of_rule_atrule',
                                                                                               'argcode' => undef,
                                                                                               'implicit' => 'block, or \';\'',
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'line' => '13',
                                                                                               'code' => '{print "at-rule\\n"}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'actcount' => 1
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => [
                                                                'ATKEYWORD',
                                                                'WS',
                                                                'any',
                                                                '_alternation_1_of_production_1_of_rule_atrule'
                                                              ],
                                                   'opcount' => 0,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'atrule'
                                                 }, 'Parse::RecDescent::Rule' ),
                              'DASHMATCH' => bless( {
                                                      'impcount' => 0,
                                                      'line' => '77',
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'patcount' => 0,
                                                                            'strcount' => 1,
                                                                            'number' => 0,
                                                                            'error' => undef,
                                                                            'line' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '\'|=\'',
                                                                                                  'line' => '77',
                                                                                                  'pattern' => '|=',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'line' => '77',
                                                                                                  'code' => '{$return = $item[1]}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [],
                                                      'opcount' => 0,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'DASHMATCH'
                                                    }, 'Parse::RecDescent::Rule' ),
                              'INCLUDES' => bless( {
                                                     'impcount' => 0,
                                                     'line' => '76',
                                                     'prods' => [
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 1,
                                                                           'number' => 0,
                                                                           'error' => undef,
                                                                           'line' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '\'~=\'',
                                                                                                 'line' => '76',
                                                                                                 'pattern' => '~=',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'line' => '76',
                                                                                                 'code' => '{$return = $item[1]}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => [],
                                                     'opcount' => 0,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'INCLUDES'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'macro_nonascii' => bless( {
                                                           'impcount' => 0,
                                                           'line' => '88',
                                                           'prods' => [
                                                                        bless( {
                                                                                 'dircount' => 0,
                                                                                 'uncommit' => undef,
                                                                                 'patcount' => 1,
                                                                                 'strcount' => 0,
                                                                                 'number' => 0,
                                                                                 'error' => undef,
                                                                                 'line' => undef,
                                                                                 'items' => [
                                                                                              bless( {
                                                                                                       'description' => '/[^\\\\0-\\\\177]/',
                                                                                                       'pattern' => '[^\\0-\\177]',
                                                                                                       'mod' => '',
                                                                                                       'hashname' => '__PATTERN1__',
                                                                                                       'lookahead' => 0,
                                                                                                       'ldelim' => '/',
                                                                                                       'line' => '88',
                                                                                                       'rdelim' => '/'
                                                                                                     }, 'Parse::RecDescent::Token' ),
                                                                                              bless( {
                                                                                                       'line' => '88',
                                                                                                       'code' => '{$return = $item[1]}',
                                                                                                       'hashname' => '__ACTION1__',
                                                                                                       'lookahead' => 0
                                                                                                     }, 'Parse::RecDescent::Action' )
                                                                                            ],
                                                                                 'actcount' => 1
                                                                               }, 'Parse::RecDescent::Production' )
                                                                      ],
                                                           'calls' => [],
                                                           'opcount' => 0,
                                                           'changed' => 0,
                                                           'vars' => '',
                                                           'name' => 'macro_nonascii'
                                                         }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_ruleset' => bless( {
                                                                                           'impcount' => 0,
                                                                                           'line' => '113',
                                                                                           'prods' => [
                                                                                                        bless( {
                                                                                                                 'dircount' => 0,
                                                                                                                 'uncommit' => undef,
                                                                                                                 'patcount' => 0,
                                                                                                                 'strcount' => 1,
                                                                                                                 'number' => 0,
                                                                                                                 'error' => undef,
                                                                                                                 'line' => undef,
                                                                                                                 'items' => [
                                                                                                                              bless( {
                                                                                                                                       'description' => '\';\'',
                                                                                                                                       'line' => '114',
                                                                                                                                       'pattern' => ';',
                                                                                                                                       'hashname' => '__STRING1__',
                                                                                                                                       'lookahead' => 0
                                                                                                                                     }, 'Parse::RecDescent::Literal' ),
                                                                                                                              bless( {
                                                                                                                                       'min' => 0,
                                                                                                                                       'argcode' => undef,
                                                                                                                                       'matchrule' => 0,
                                                                                                                                       'lookahead' => 0,
                                                                                                                                       'subrule' => 'WS',
                                                                                                                                       'line' => '114',
                                                                                                                                       'expected' => undef,
                                                                                                                                       'max' => 100000000,
                                                                                                                                       'repspec' => 's?'
                                                                                                                                     }, 'Parse::RecDescent::Repetition' ),
                                                                                                                              bless( {
                                                                                                                                       'min' => 0,
                                                                                                                                       'argcode' => undef,
                                                                                                                                       'matchrule' => 0,
                                                                                                                                       'lookahead' => 0,
                                                                                                                                       'subrule' => 'declaration',
                                                                                                                                       'line' => '114',
                                                                                                                                       'expected' => undef,
                                                                                                                                       'max' => 1,
                                                                                                                                       'repspec' => '?'
                                                                                                                                     }, 'Parse::RecDescent::Repetition' ),
                                                                                                                              bless( {
                                                                                                                                       'line' => '114',
                                                                                                                                       'code' => '{6;}',
                                                                                                                                       'hashname' => '__ACTION1__',
                                                                                                                                       'lookahead' => 0
                                                                                                                                     }, 'Parse::RecDescent::Action' )
                                                                                                                            ],
                                                                                                                 'actcount' => 1
                                                                                                               }, 'Parse::RecDescent::Production' )
                                                                                                      ],
                                                                                           'calls' => [
                                                                                                        'WS',
                                                                                                        'declaration'
                                                                                                      ],
                                                                                           'opcount' => 0,
                                                                                           'changed' => 0,
                                                                                           'vars' => '',
                                                                                           'name' => '_alternation_1_of_production_1_of_rule_ruleset'
                                                                                         }, 'Parse::RecDescent::Rule' ),
                              'macro_nmchar' => bless( {
                                                         'impcount' => 0,
                                                         'line' => '92',
                                                         'prods' => [
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 1,
                                                                               'strcount' => 0,
                                                                               'number' => 0,
                                                                               'error' => undef,
                                                                               'line' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'description' => '/[a-z0-9-]/',
                                                                                                     'pattern' => '[a-z0-9-]',
                                                                                                     'mod' => '',
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'ldelim' => '/',
                                                                                                     'line' => '92',
                                                                                                     'rdelim' => '/'
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'line' => '92',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' ),
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'number' => 1,
                                                                               'error' => undef,
                                                                               'line' => '93',
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'line' => '93',
                                                                                                     'subrule' => 'macro_nonascii',
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'matchrule' => 0,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'line' => '93',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' ),
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'number' => 2,
                                                                               'error' => undef,
                                                                               'line' => '94',
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'line' => '94',
                                                                                                     'subrule' => 'macro_escape',
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'matchrule' => 0,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'line' => '94',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => [
                                                                      'macro_nonascii',
                                                                      'macro_escape'
                                                                    ],
                                                         'opcount' => 0,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'macro_nmchar'
                                                       }, 'Parse::RecDescent::Rule' ),
                              'any_item' => bless( {
                                                     'impcount' => 0,
                                                     'line' => '41',
                                                     'prods' => [
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 0,
                                                                           'error' => undef,
                                                                           'line' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '41',
                                                                                                 'subrule' => 'URI',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '41',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 1,
                                                                           'error' => undef,
                                                                           'line' => '42',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '42',
                                                                                                 'subrule' => 'IDENT',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '42',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 2,
                                                                           'error' => undef,
                                                                           'line' => '43',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '43',
                                                                                                 'subrule' => 'NUMBER',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '43',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 3,
                                                                           'error' => undef,
                                                                           'line' => '44',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '44',
                                                                                                 'subrule' => 'PERCENTAGE',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '44',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 4,
                                                                           'error' => undef,
                                                                           'line' => '45',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '45',
                                                                                                 'subrule' => 'DIMENSION',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '45',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 5,
                                                                           'error' => undef,
                                                                           'line' => '46',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '46',
                                                                                                 'subrule' => 'STRING',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '46',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 6,
                                                                           'error' => undef,
                                                                           'line' => '47',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '47',
                                                                                                 'subrule' => 'HASH',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '47',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 7,
                                                                           'error' => undef,
                                                                           'line' => '48',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '48',
                                                                                                 'subrule' => 'UNICODERANGE',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '48',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 8,
                                                                           'error' => undef,
                                                                           'line' => '49',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '49',
                                                                                                 'subrule' => 'INCLUDES',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '49',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 9,
                                                                           'error' => undef,
                                                                           'line' => '50',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '50',
                                                                                                 'subrule' => 'FUNCTION',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '50',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 10,
                                                                           'error' => undef,
                                                                           'line' => '51',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '51',
                                                                                                 'subrule' => 'DASHMATCH',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '51',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 2,
                                                                           'number' => 11,
                                                                           'error' => undef,
                                                                           'line' => '52',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '\'(\'',
                                                                                                 'line' => '52',
                                                                                                 'pattern' => '(',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'min' => 0,
                                                                                                 'argcode' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0,
                                                                                                 'subrule' => 'any',
                                                                                                 'line' => '52',
                                                                                                 'expected' => undef,
                                                                                                 'max' => 100000000,
                                                                                                 'repspec' => 's?'
                                                                                               }, 'Parse::RecDescent::Repetition' ),
                                                                                        bless( {
                                                                                                 'description' => '\')\'',
                                                                                                 'line' => '52',
                                                                                                 'pattern' => ')',
                                                                                                 'hashname' => '__STRING2__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'line' => '52',
                                                                                                 'code' => '{$return = \'(\'.join(\'\',@{$item[2]}).\')\';}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 2,
                                                                           'number' => 12,
                                                                           'error' => undef,
                                                                           'line' => '53',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '\'[\'',
                                                                                                 'line' => '53',
                                                                                                 'pattern' => '[',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'min' => 0,
                                                                                                 'argcode' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0,
                                                                                                 'subrule' => 'any',
                                                                                                 'line' => '53',
                                                                                                 'expected' => undef,
                                                                                                 'max' => 100000000,
                                                                                                 'repspec' => 's?'
                                                                                               }, 'Parse::RecDescent::Repetition' ),
                                                                                        bless( {
                                                                                                 'description' => '\']\'',
                                                                                                 'line' => '53',
                                                                                                 'pattern' => ']',
                                                                                                 'hashname' => '__STRING2__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'line' => '53',
                                                                                                 'code' => '{$return = \'[\'.join(\'\',@{$item[2]}).\']\';}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' ),
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 13,
                                                                           'error' => undef,
                                                                           'line' => '54',
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '54',
                                                                                                 'subrule' => 'DELIM',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '54',
                                                                                                 'code' => '{$return = $item[1];}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => [
                                                                  'URI',
                                                                  'IDENT',
                                                                  'NUMBER',
                                                                  'PERCENTAGE',
                                                                  'DIMENSION',
                                                                  'STRING',
                                                                  'HASH',
                                                                  'UNICODERANGE',
                                                                  'INCLUDES',
                                                                  'FUNCTION',
                                                                  'DASHMATCH',
                                                                  'any',
                                                                  'DELIM'
                                                                ],
                                                     'opcount' => 0,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'any_item'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'declaration' => bless( {
                                                        'impcount' => 0,
                                                        'line' => '25',
                                                        'prods' => [
                                                                     bless( {
                                                                              'dircount' => 0,
                                                                              'uncommit' => undef,
                                                                              'patcount' => 0,
                                                                              'strcount' => 1,
                                                                              'number' => 0,
                                                                              'error' => undef,
                                                                              'line' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'line' => '25',
                                                                                                    'subrule' => 'property',
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'matchrule' => 0,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'description' => '\':\'',
                                                                                                    'line' => '25',
                                                                                                    'pattern' => ':',
                                                                                                    'hashname' => '__STRING1__',
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Literal' ),
                                                                                           bless( {
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'matchrule' => 0,
                                                                                                    'lookahead' => 0,
                                                                                                    'subrule' => 'WS',
                                                                                                    'line' => '25',
                                                                                                    'expected' => undef,
                                                                                                    'max' => 100000000,
                                                                                                    'repspec' => 's?'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'line' => '25',
                                                                                                    'subrule' => 'value',
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'matchrule' => 0,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'line' => '26',
                                                                                                    'code' => '{
						$ruleset->add_property(new CSS::Property({
							\'property\' => $item[1],
							\'value\' => $item[4],
						}));
						1;
					}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'actcount' => 1
                                                                            }, 'Parse::RecDescent::Production' ),
                                                                     bless( {
                                                                              'dircount' => 1,
                                                                              'uncommit' => undef,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'number' => 1,
                                                                              'error' => undef,
                                                                              'line' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'line' => '33',
                                                                                                    'hashname' => '__DIRECTIVE1__',
                                                                                                    'lookahead' => 0,
                                                                                                    'name' => '<rulevar: local $value>'
                                                                                                  }, 'Parse::RecDescent::UncondReject' )
                                                                                         ],
                                                                              'actcount' => 0
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'calls' => [
                                                                     'property',
                                                                     'WS',
                                                                     'value'
                                                                   ],
                                                        'opcount' => 0,
                                                        'changed' => 0,
                                                        'vars' => ' local $value;
',
                                                        'name' => 'declaration'
                                                      }, 'Parse::RecDescent::Rule' ),
                              'macro_unicode' => bless( {
                                                          'impcount' => 0,
                                                          'line' => '89',
                                                          'prods' => [
                                                                       bless( {
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'patcount' => 1,
                                                                                'strcount' => 0,
                                                                                'number' => 0,
                                                                                'error' => undef,
                                                                                'line' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '/\\\\[0-9a-f]\\{1,6\\}[ \\\\n\\\\r\\\\t\\\\f]?/',
                                                                                                      'pattern' => '\\[0-9a-f]{1,6}[ \\n\\r\\t\\f]?',
                                                                                                      'mod' => '',
                                                                                                      'hashname' => '__PATTERN1__',
                                                                                                      'lookahead' => 0,
                                                                                                      'ldelim' => '/',
                                                                                                      'line' => '89',
                                                                                                      'rdelim' => '/'
                                                                                                    }, 'Parse::RecDescent::Token' ),
                                                                                             bless( {
                                                                                                      'line' => '89',
                                                                                                      'code' => '{$return = $item[1]}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'actcount' => 1
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'calls' => [],
                                                          'opcount' => 0,
                                                          'changed' => 0,
                                                          'vars' => '',
                                                          'name' => 'macro_unicode'
                                                        }, 'Parse::RecDescent::Rule' ),
                              'macro_nmstart' => bless( {
                                                          'impcount' => 0,
                                                          'line' => '85',
                                                          'prods' => [
                                                                       bless( {
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'patcount' => 1,
                                                                                'strcount' => 0,
                                                                                'number' => 0,
                                                                                'error' => undef,
                                                                                'line' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '/[a-zA-Z]/',
                                                                                                      'pattern' => '[a-zA-Z]',
                                                                                                      'mod' => '',
                                                                                                      'hashname' => '__PATTERN1__',
                                                                                                      'lookahead' => 0,
                                                                                                      'ldelim' => '/',
                                                                                                      'line' => '85',
                                                                                                      'rdelim' => '/'
                                                                                                    }, 'Parse::RecDescent::Token' ),
                                                                                             bless( {
                                                                                                      'line' => '85',
                                                                                                      'code' => '{$return = $item[1]}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'actcount' => 1
                                                                              }, 'Parse::RecDescent::Production' ),
                                                                       bless( {
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'patcount' => 0,
                                                                                'strcount' => 0,
                                                                                'number' => 1,
                                                                                'error' => undef,
                                                                                'line' => '86',
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'line' => '86',
                                                                                                      'subrule' => 'macro_nonascii',
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'matchrule' => 0,
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'line' => '86',
                                                                                                      'code' => '{$return = $item[1]}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'actcount' => 1
                                                                              }, 'Parse::RecDescent::Production' ),
                                                                       bless( {
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'patcount' => 0,
                                                                                'strcount' => 0,
                                                                                'number' => 2,
                                                                                'error' => undef,
                                                                                'line' => '87',
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'line' => '87',
                                                                                                      'subrule' => 'macro_escape',
                                                                                                      'argcode' => undef,
                                                                                                      'implicit' => undef,
                                                                                                      'matchrule' => 0,
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Subrule' ),
                                                                                             bless( {
                                                                                                      'line' => '87',
                                                                                                      'code' => '{$return = $item[1]}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'actcount' => 1
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'calls' => [
                                                                       'macro_nonascii',
                                                                       'macro_escape'
                                                                     ],
                                                          'opcount' => 0,
                                                          'changed' => 0,
                                                          'vars' => '',
                                                          'name' => 'macro_nmstart'
                                                        }, 'Parse::RecDescent::Rule' ),
                              'macro_escape' => bless( {
                                                         'impcount' => 0,
                                                         'line' => '90',
                                                         'prods' => [
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'number' => 0,
                                                                               'error' => undef,
                                                                               'line' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'line' => '90',
                                                                                                     'subrule' => 'macro_unicode',
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'matchrule' => 0,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'line' => '90',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' ),
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 1,
                                                                               'strcount' => 0,
                                                                               'number' => 1,
                                                                               'error' => undef,
                                                                               'line' => '91',
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'description' => '/\\\\\\\\[ -~\\\\200-\\\\4177777]/',
                                                                                                     'pattern' => '\\\\[ -~\\200-\\4177777]',
                                                                                                     'mod' => '',
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'ldelim' => '/',
                                                                                                     'line' => '91',
                                                                                                     'rdelim' => '/'
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'line' => '91',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => [
                                                                      'macro_unicode'
                                                                    ],
                                                         'opcount' => 0,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'macro_escape'
                                                       }, 'Parse::RecDescent::Rule' ),
                              'macro_name' => bless( {
                                                       'impcount' => 0,
                                                       'line' => '84',
                                                       'prods' => [
                                                                    bless( {
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'number' => 0,
                                                                             'error' => undef,
                                                                             'line' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'min' => 1,
                                                                                                   'argcode' => undef,
                                                                                                   'matchrule' => 0,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => 'macro_nmchar',
                                                                                                   'line' => '84',
                                                                                                   'expected' => undef,
                                                                                                   'max' => 100000000,
                                                                                                   'repspec' => 's'
                                                                                                 }, 'Parse::RecDescent::Repetition' ),
                                                                                          bless( {
                                                                                                   'line' => '84',
                                                                                                   'code' => '{$return = join(\'\',@{$item[1]})}',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'actcount' => 1
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'macro_nmchar'
                                                                  ],
                                                       'opcount' => 0,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'macro_name'
                                                     }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_block' => bless( {
                                                                                         'impcount' => 0,
                                                                                         'line' => '115',
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'number' => 0,
                                                                                                               'error' => undef,
                                                                                                               'line' => undef,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'line' => '115',
                                                                                                                                     'subrule' => 'any',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                                                          ],
                                                                                                               'actcount' => 0
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'number' => 1,
                                                                                                               'error' => undef,
                                                                                                               'line' => '115',
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'line' => '115',
                                                                                                                                     'subrule' => 'block',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' )
                                                                                                                          ],
                                                                                                               'actcount' => 0
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'number' => 2,
                                                                                                               'error' => undef,
                                                                                                               'line' => '115',
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'line' => '115',
                                                                                                                                     'subrule' => 'ATKEYWORD',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'min' => 0,
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0,
                                                                                                                                     'subrule' => 'WS',
                                                                                                                                     'line' => '115',
                                                                                                                                     'expected' => undef,
                                                                                                                                     'max' => 100000000,
                                                                                                                                     'repspec' => 's?'
                                                                                                                                   }, 'Parse::RecDescent::Repetition' )
                                                                                                                          ],
                                                                                                               'actcount' => 0
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 1,
                                                                                                               'number' => 3,
                                                                                                               'error' => undef,
                                                                                                               'line' => '115',
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'description' => '\';\'',
                                                                                                                                     'line' => '115',
                                                                                                                                     'pattern' => ';',
                                                                                                                                     'hashname' => '__STRING1__',
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Literal' )
                                                                                                                          ],
                                                                                                               'actcount' => 0
                                                                                                             }, 'Parse::RecDescent::Production' )
                                                                                                    ],
                                                                                         'calls' => [
                                                                                                      'any',
                                                                                                      'block',
                                                                                                      'ATKEYWORD',
                                                                                                      'WS'
                                                                                                    ],
                                                                                         'opcount' => 0,
                                                                                         'changed' => 0,
                                                                                         'vars' => '',
                                                                                         'name' => '_alternation_1_of_production_1_of_rule_block'
                                                                                       }, 'Parse::RecDescent::Rule' ),
                              'macro_w' => bless( {
                                                    'impcount' => 0,
                                                    'line' => '113',
                                                    'prods' => [
                                                                 bless( {
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'patcount' => 1,
                                                                          'strcount' => 0,
                                                                          'number' => 0,
                                                                          'error' => undef,
                                                                          'line' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'description' => '/[ \\\\t\\\\r\\\\n\\\\f]*/',
                                                                                                'pattern' => '[ \\t\\r\\n\\f]*',
                                                                                                'mod' => '',
                                                                                                'hashname' => '__PATTERN1__',
                                                                                                'lookahead' => 0,
                                                                                                'ldelim' => '/',
                                                                                                'line' => '113',
                                                                                                'rdelim' => '/'
                                                                                              }, 'Parse::RecDescent::Token' ),
                                                                                       bless( {
                                                                                                'line' => '113',
                                                                                                'code' => '{$return = $item[1]}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'actcount' => 1
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'calls' => [],
                                                    'opcount' => 0,
                                                    'changed' => 0,
                                                    'vars' => '',
                                                    'name' => 'macro_w'
                                                  }, 'Parse::RecDescent::Rule' ),
                              'PERCENTAGE' => bless( {
                                                       'impcount' => 0,
                                                       'line' => '64',
                                                       'prods' => [
                                                                    bless( {
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'patcount' => 0,
                                                                             'strcount' => 1,
                                                                             'number' => 0,
                                                                             'error' => undef,
                                                                             'line' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'line' => '64',
                                                                                                   'subrule' => 'macro_num',
                                                                                                   'argcode' => undef,
                                                                                                   'implicit' => undef,
                                                                                                   'matchrule' => 0,
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Subrule' ),
                                                                                          bless( {
                                                                                                   'description' => '\'%\'',
                                                                                                   'line' => '64',
                                                                                                   'pattern' => '%',
                                                                                                   'hashname' => '__STRING1__',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Literal' ),
                                                                                          bless( {
                                                                                                   'line' => '64',
                                                                                                   'code' => '{$return = $item[1].\'&\'}',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'actcount' => 1
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    'macro_num'
                                                                  ],
                                                       'opcount' => 0,
                                                       'changed' => 0,
                                                       'vars' => '',
                                                       'name' => 'PERCENTAGE'
                                                     }, 'Parse::RecDescent::Rule' ),
                              'UNICODERANGE' => bless( {
                                                         'impcount' => 0,
                                                         'line' => '72',
                                                         'prods' => [
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 1,
                                                                               'strcount' => 0,
                                                                               'number' => 0,
                                                                               'error' => undef,
                                                                               'line' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'description' => '/U\\\\+[0-9A-F?]\\{1,6\\}(-[0-9A-F]\\{1,6\\})?/',
                                                                                                     'pattern' => 'U\\+[0-9A-F?]{1,6}(-[0-9A-F]{1,6})?',
                                                                                                     'mod' => '',
                                                                                                     'hashname' => '__PATTERN1__',
                                                                                                     'lookahead' => 0,
                                                                                                     'ldelim' => '/',
                                                                                                     'line' => '72',
                                                                                                     'rdelim' => '/'
                                                                                                   }, 'Parse::RecDescent::Token' ),
                                                                                            bless( {
                                                                                                     'line' => '72',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => [],
                                                         'opcount' => 0,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'UNICODERANGE'
                                                       }, 'Parse::RecDescent::Rule' ),
                              'URI' => bless( {
                                                'impcount' => 1,
                                                'line' => '66',
                                                'prods' => [
                                                             bless( {
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'patcount' => 0,
                                                                      'strcount' => 2,
                                                                      'number' => 0,
                                                                      'error' => undef,
                                                                      'line' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'description' => '\'url(\'',
                                                                                            'line' => '66',
                                                                                            'pattern' => 'url(',
                                                                                            'hashname' => '__STRING1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Literal' ),
                                                                                   bless( {
                                                                                            'line' => '66',
                                                                                            'subrule' => 'macro_w',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'line' => '66',
                                                                                            'subrule' => 'macro_string',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'line' => '66',
                                                                                            'subrule' => 'macro_w',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'description' => '\')\'',
                                                                                            'line' => '66',
                                                                                            'pattern' => ')',
                                                                                            'hashname' => '__STRING2__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Literal' ),
                                                                                   bless( {
                                                                                            'line' => '66',
                                                                                            'code' => '{$return = "url(".$item[3].")"}',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'actcount' => 1
                                                                    }, 'Parse::RecDescent::Production' ),
                                                             bless( {
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'patcount' => 0,
                                                                      'strcount' => 2,
                                                                      'number' => 1,
                                                                      'error' => undef,
                                                                      'line' => '67',
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'description' => '\'url(\'',
                                                                                            'line' => '67',
                                                                                            'pattern' => 'url(',
                                                                                            'hashname' => '__STRING1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Literal' ),
                                                                                   bless( {
                                                                                            'line' => '67',
                                                                                            'subrule' => 'macro_w',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'min' => 0,
                                                                                            'argcode' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0,
                                                                                            'subrule' => '_alternation_1_of_production_2_of_rule_URI',
                                                                                            'line' => '71',
                                                                                            'expected' => '/[!#$%&*-~]/, or macro_nonascii, or macro_escape',
                                                                                            'max' => 100000000,
                                                                                            'repspec' => 's?'
                                                                                          }, 'Parse::RecDescent::Repetition' ),
                                                                                   bless( {
                                                                                            'line' => '71',
                                                                                            'subrule' => 'macro_w',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'description' => '\')\'',
                                                                                            'line' => '71',
                                                                                            'pattern' => ')',
                                                                                            'hashname' => '__STRING2__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Literal' ),
                                                                                   bless( {
                                                                                            'line' => '71',
                                                                                            'code' => '{$return = "url(".join(\'\',@{$item[3]}).")"}',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'actcount' => 1
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'calls' => [
                                                             'macro_w',
                                                             'macro_string',
                                                             '_alternation_1_of_production_2_of_rule_URI'
                                                           ],
                                                'opcount' => 0,
                                                'changed' => 0,
                                                'vars' => '',
                                                'name' => 'URI'
                                              }, 'Parse::RecDescent::Rule' ),
                              'DIMENSION' => bless( {
                                                      'impcount' => 0,
                                                      'line' => '65',
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'number' => 0,
                                                                            'error' => undef,
                                                                            'line' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => '65',
                                                                                                  'subrule' => 'macro_num',
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => '65',
                                                                                                  'subrule' => 'macro_ident',
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => '65',
                                                                                                  'code' => '{$return = $item[1].$item[2]}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'macro_num',
                                                                   'macro_ident'
                                                                 ],
                                                      'opcount' => 0,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'DIMENSION'
                                                    }, 'Parse::RecDescent::Rule' ),
                              'statement' => bless( {
                                                      'impcount' => 0,
                                                      'line' => '11',
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'number' => 0,
                                                                            'error' => undef,
                                                                            'line' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => '11',
                                                                                                  'subrule' => 'ruleset',
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => '11',
                                                                                                  'code' => '{4;}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1
                                                                          }, 'Parse::RecDescent::Production' ),
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'patcount' => 0,
                                                                            'strcount' => 0,
                                                                            'number' => 1,
                                                                            'error' => undef,
                                                                            'line' => '12',
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'line' => '12',
                                                                                                  'subrule' => 'atrule',
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => '12',
                                                                                                  'code' => '{5;}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'ruleset',
                                                                   'atrule'
                                                                 ],
                                                      'opcount' => 0,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'statement'
                                                    }, 'Parse::RecDescent::Rule' ),
                              'value' => bless( {
                                                  'impcount' => 1,
                                                  'line' => '35',
                                                  'prods' => [
                                                               bless( {
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'number' => 0,
                                                                        'error' => undef,
                                                                        'line' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'min' => 1,
                                                                                              'argcode' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => '_alternation_1_of_production_1_of_rule_value',
                                                                                              'line' => '39',
                                                                                              'expected' => 'any, or block, or ATKEYWORD',
                                                                                              'max' => 100000000,
                                                                                              'repspec' => 's'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'line' => '39',
                                                                                              'code' => '{$return = join(\'\',@{$item[1]})}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'actcount' => 1
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => [
                                                               '_alternation_1_of_production_1_of_rule_value'
                                                             ],
                                                  'opcount' => 0,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'value'
                                                }, 'Parse::RecDescent::Rule' ),
                              'DELIM' => bless( {
                                                  'impcount' => 0,
                                                  'line' => '78',
                                                  'prods' => [
                                                               bless( {
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'patcount' => 1,
                                                                        'strcount' => 0,
                                                                        'number' => 0,
                                                                        'error' => undef,
                                                                        'line' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '/[^0-9a-zA-Z\\\\\\{\\\\\\}\\\\(\\\\)\\\\[\\\\];]/',
                                                                                              'pattern' => '[^0-9a-zA-Z\\{\\}\\(\\)\\[\\];]',
                                                                                              'mod' => '',
                                                                                              'hashname' => '__PATTERN1__',
                                                                                              'lookahead' => 0,
                                                                                              'ldelim' => '/',
                                                                                              'line' => '78',
                                                                                              'rdelim' => '/'
                                                                                            }, 'Parse::RecDescent::Token' ),
                                                                                     bless( {
                                                                                              'line' => '78',
                                                                                              'code' => '{$return = $item[1]}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'actcount' => 1
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => [],
                                                  'opcount' => 0,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'DELIM'
                                                }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_stylesheet' => bless( {
                                                                                              'impcount' => 0,
                                                                                              'line' => '112',
                                                                                              'prods' => [
                                                                                                           bless( {
                                                                                                                    'dircount' => 0,
                                                                                                                    'uncommit' => undef,
                                                                                                                    'patcount' => 0,
                                                                                                                    'strcount' => 0,
                                                                                                                    'number' => 0,
                                                                                                                    'error' => undef,
                                                                                                                    'line' => undef,
                                                                                                                    'items' => [
                                                                                                                                 bless( {
                                                                                                                                          'line' => '113',
                                                                                                                                          'subrule' => 'WS',
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'implicit' => undef,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'lookahead' => 0
                                                                                                                                        }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                 bless( {
                                                                                                                                          'line' => '113',
                                                                                                                                          'code' => '{2;}',
                                                                                                                                          'hashname' => '__ACTION1__',
                                                                                                                                          'lookahead' => 0
                                                                                                                                        }, 'Parse::RecDescent::Action' )
                                                                                                                               ],
                                                                                                                    'actcount' => 1
                                                                                                                  }, 'Parse::RecDescent::Production' ),
                                                                                                           bless( {
                                                                                                                    'dircount' => 0,
                                                                                                                    'uncommit' => undef,
                                                                                                                    'patcount' => 0,
                                                                                                                    'strcount' => 0,
                                                                                                                    'number' => 1,
                                                                                                                    'error' => undef,
                                                                                                                    'line' => '114',
                                                                                                                    'items' => [
                                                                                                                                 bless( {
                                                                                                                                          'line' => '114',
                                                                                                                                          'subrule' => 'statement',
                                                                                                                                          'argcode' => undef,
                                                                                                                                          'implicit' => undef,
                                                                                                                                          'matchrule' => 0,
                                                                                                                                          'lookahead' => 0
                                                                                                                                        }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                 bless( {
                                                                                                                                          'line' => '114',
                                                                                                                                          'code' => '{3;}',
                                                                                                                                          'hashname' => '__ACTION1__',
                                                                                                                                          'lookahead' => 0
                                                                                                                                        }, 'Parse::RecDescent::Action' )
                                                                                                                               ],
                                                                                                                    'actcount' => 1
                                                                                                                  }, 'Parse::RecDescent::Production' )
                                                                                                         ],
                                                                                              'calls' => [
                                                                                                           'WS',
                                                                                                           'statement'
                                                                                                         ],
                                                                                              'opcount' => 0,
                                                                                              'changed' => 0,
                                                                                              'vars' => '',
                                                                                              'name' => '_alternation_1_of_production_1_of_rule_stylesheet'
                                                                                            }, 'Parse::RecDescent::Rule' ),
                              'HASH' => bless( {
                                                 'impcount' => 0,
                                                 'line' => '62',
                                                 'prods' => [
                                                              bless( {
                                                                       'dircount' => 0,
                                                                       'uncommit' => undef,
                                                                       'patcount' => 0,
                                                                       'strcount' => 1,
                                                                       'number' => 0,
                                                                       'error' => undef,
                                                                       'line' => undef,
                                                                       'items' => [
                                                                                    bless( {
                                                                                             'description' => '\'#\'',
                                                                                             'line' => '62',
                                                                                             'pattern' => '#',
                                                                                             'hashname' => '__STRING1__',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                    bless( {
                                                                                             'line' => '62',
                                                                                             'subrule' => 'macro_name',
                                                                                             'argcode' => undef,
                                                                                             'implicit' => undef,
                                                                                             'matchrule' => 0,
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                    bless( {
                                                                                             'line' => '62',
                                                                                             'code' => '{$return = \'#\'.$item[2]}',
                                                                                             'hashname' => '__ACTION1__',
                                                                                             'lookahead' => 0
                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                  ],
                                                                       'actcount' => 1
                                                                     }, 'Parse::RecDescent::Production' )
                                                            ],
                                                 'calls' => [
                                                              'macro_name'
                                                            ],
                                                 'opcount' => 0,
                                                 'changed' => 0,
                                                 'vars' => '',
                                                 'name' => 'HASH'
                                               }, 'Parse::RecDescent::Rule' ),
                              'stylesheet' => bless( {
                                                       'impcount' => 0,
                                                       'line' => '5',
                                                       'prods' => [
                                                                    bless( {
                                                                             'dircount' => 0,
                                                                             'uncommit' => undef,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'number' => 0,
                                                                             'error' => undef,
                                                                             'line' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'min' => 1,
                                                                                                   'argcode' => undef,
                                                                                                   'matchrule' => 0,
                                                                                                   'lookahead' => 0,
                                                                                                   'subrule' => '_alternation_1_of_production_1_of_rule_stylesheet',
                                                                                                   'line' => '9',
                                                                                                   'expected' => 'WS, or statement',
                                                                                                   'max' => 100000000,
                                                                                                   'repspec' => 's'
                                                                                                 }, 'Parse::RecDescent::Repetition' ),
                                                                                          bless( {
                                                                                                   'line' => '9',
                                                                                                   'code' => '{$return = $all_rulesets;}',
                                                                                                   'hashname' => '__ACTION1__',
                                                                                                   'lookahead' => 0
                                                                                                 }, 'Parse::RecDescent::Action' )
                                                                                        ],
                                                                             'actcount' => 1
                                                                           }, 'Parse::RecDescent::Production' ),
                                                                    bless( {
                                                                             'dircount' => 1,
                                                                             'uncommit' => undef,
                                                                             'patcount' => 0,
                                                                             'strcount' => 0,
                                                                             'number' => 1,
                                                                             'error' => undef,
                                                                             'line' => undef,
                                                                             'items' => [
                                                                                          bless( {
                                                                                                   'line' => '10',
                                                                                                   'hashname' => '__DIRECTIVE1__',
                                                                                                   'lookahead' => 0,
                                                                                                   'name' => '<rulevar: local $all_rulesets>'
                                                                                                 }, 'Parse::RecDescent::UncondReject' )
                                                                                        ],
                                                                             'actcount' => 0
                                                                           }, 'Parse::RecDescent::Production' )
                                                                  ],
                                                       'calls' => [
                                                                    '_alternation_1_of_production_1_of_rule_stylesheet'
                                                                  ],
                                                       'opcount' => 0,
                                                       'changed' => 0,
                                                       'vars' => ' local $all_rulesets;
',
                                                       'name' => 'stylesheet'
                                                     }, 'Parse::RecDescent::Rule' ),
                              'ruleset' => bless( {
                                                    'impcount' => 0,
                                                    'line' => '15',
                                                    'prods' => [
                                                                 bless( {
                                                                          'dircount' => 0,
                                                                          'uncommit' => undef,
                                                                          'patcount' => 0,
                                                                          'strcount' => 2,
                                                                          'number' => 0,
                                                                          'error' => undef,
                                                                          'line' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'min' => 0,
                                                                                                'argcode' => undef,
                                                                                                'matchrule' => 0,
                                                                                                'lookahead' => 0,
                                                                                                'subrule' => 'selector',
                                                                                                'line' => '15',
                                                                                                'expected' => undef,
                                                                                                'max' => 1,
                                                                                                'repspec' => '?'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'description' => '\'\\{\'',
                                                                                                'line' => '15',
                                                                                                'pattern' => '{',
                                                                                                'hashname' => '__STRING1__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'min' => 0,
                                                                                                'argcode' => undef,
                                                                                                'matchrule' => 0,
                                                                                                'lookahead' => 0,
                                                                                                'subrule' => 'WS',
                                                                                                'line' => '15',
                                                                                                'expected' => undef,
                                                                                                'max' => 100000000,
                                                                                                'repspec' => 's?'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'min' => 0,
                                                                                                'argcode' => undef,
                                                                                                'matchrule' => 0,
                                                                                                'lookahead' => 0,
                                                                                                'subrule' => 'declaration',
                                                                                                'line' => '15',
                                                                                                'expected' => undef,
                                                                                                'max' => 1,
                                                                                                'repspec' => '?'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'min' => 0,
                                                                                                'argcode' => undef,
                                                                                                'matchrule' => 0,
                                                                                                'lookahead' => 0,
                                                                                                'subrule' => '_alternation_1_of_production_1_of_rule_ruleset',
                                                                                                'line' => '17',
                                                                                                'expected' => '\';\'',
                                                                                                'max' => 100000000,
                                                                                                'repspec' => 's?'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'description' => '\'\\}\'',
                                                                                                'line' => '17',
                                                                                                'pattern' => '}',
                                                                                                'hashname' => '__STRING2__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Literal' ),
                                                                                       bless( {
                                                                                                'min' => 0,
                                                                                                'argcode' => undef,
                                                                                                'matchrule' => 0,
                                                                                                'lookahead' => 0,
                                                                                                'subrule' => 'WS',
                                                                                                'line' => '17',
                                                                                                'expected' => undef,
                                                                                                'max' => 100000000,
                                                                                                'repspec' => 's?'
                                                                                              }, 'Parse::RecDescent::Repetition' ),
                                                                                       bless( {
                                                                                                'line' => '17',
                                                                                                'code' => '{push @{$all_rulesets}, $ruleset; 1;}',
                                                                                                'hashname' => '__ACTION1__',
                                                                                                'lookahead' => 0
                                                                                              }, 'Parse::RecDescent::Action' )
                                                                                     ],
                                                                          'actcount' => 1
                                                                        }, 'Parse::RecDescent::Production' ),
                                                                 bless( {
                                                                          'dircount' => 1,
                                                                          'uncommit' => undef,
                                                                          'patcount' => 0,
                                                                          'strcount' => 0,
                                                                          'number' => 1,
                                                                          'error' => undef,
                                                                          'line' => undef,
                                                                          'items' => [
                                                                                       bless( {
                                                                                                'line' => '18',
                                                                                                'hashname' => '__DIRECTIVE1__',
                                                                                                'lookahead' => 0,
                                                                                                'name' => '<rulevar: local $ruleset = new CSS::Style();>'
                                                                                              }, 'Parse::RecDescent::UncondReject' )
                                                                                     ],
                                                                          'actcount' => 0
                                                                        }, 'Parse::RecDescent::Production' )
                                                               ],
                                                    'calls' => [
                                                                 'selector',
                                                                 'WS',
                                                                 'declaration',
                                                                 '_alternation_1_of_production_1_of_rule_ruleset'
                                                               ],
                                                    'opcount' => 0,
                                                    'changed' => 0,
                                                    'vars' => ' local $ruleset = new CSS::Style();;
',
                                                    'name' => 'ruleset'
                                                  }, 'Parse::RecDescent::Rule' ),
                              'any' => bless( {
                                                'impcount' => 0,
                                                'line' => '40',
                                                'prods' => [
                                                             bless( {
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'number' => 0,
                                                                      'error' => undef,
                                                                      'line' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'line' => '40',
                                                                                            'subrule' => 'any_item',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'line' => '40',
                                                                                            'subrule' => 'OWS',
                                                                                            'argcode' => undef,
                                                                                            'implicit' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Subrule' ),
                                                                                   bless( {
                                                                                            'line' => '40',
                                                                                            'code' => '{$return = $item[1].$item[2]}',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'actcount' => 1
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'calls' => [
                                                             'any_item',
                                                             'OWS'
                                                           ],
                                                'opcount' => 0,
                                                'changed' => 0,
                                                'vars' => '',
                                                'name' => 'any'
                                              }, 'Parse::RecDescent::Rule' ),
                              'macro_num' => bless( {
                                                      'impcount' => 0,
                                                      'line' => '95',
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'patcount' => 1,
                                                                            'strcount' => 0,
                                                                            'number' => 0,
                                                                            'error' => undef,
                                                                            'line' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '/[0-9]+|[0-9]*\\\\.[0-9]+/',
                                                                                                  'pattern' => '[0-9]+|[0-9]*\\.[0-9]+',
                                                                                                  'mod' => '',
                                                                                                  'hashname' => '__PATTERN1__',
                                                                                                  'lookahead' => 0,
                                                                                                  'ldelim' => '/',
                                                                                                  'line' => '95',
                                                                                                  'rdelim' => '/'
                                                                                                }, 'Parse::RecDescent::Token' ),
                                                                                         bless( {
                                                                                                  'line' => '95',
                                                                                                  'code' => '{$return = $item[1]}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [],
                                                      'opcount' => 0,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'macro_num'
                                                    }, 'Parse::RecDescent::Rule' ),
                              'WS' => bless( {
                                               'impcount' => 0,
                                               'line' => '73',
                                               'prods' => [
                                                            bless( {
                                                                     'dircount' => 0,
                                                                     'uncommit' => undef,
                                                                     'patcount' => 1,
                                                                     'strcount' => 0,
                                                                     'number' => 0,
                                                                     'error' => undef,
                                                                     'line' => undef,
                                                                     'items' => [
                                                                                  bless( {
                                                                                           'description' => '/[ \\\\t\\\\r\\\\n\\\\f]+/',
                                                                                           'pattern' => '[ \\t\\r\\n\\f]+',
                                                                                           'mod' => '',
                                                                                           'hashname' => '__PATTERN1__',
                                                                                           'lookahead' => 0,
                                                                                           'ldelim' => '/',
                                                                                           'line' => '73',
                                                                                           'rdelim' => '/'
                                                                                         }, 'Parse::RecDescent::Token' ),
                                                                                  bless( {
                                                                                           'line' => '73',
                                                                                           'code' => '{$return = \' \';}',
                                                                                           'hashname' => '__ACTION1__',
                                                                                           'lookahead' => 0
                                                                                         }, 'Parse::RecDescent::Action' )
                                                                                ],
                                                                     'actcount' => 1
                                                                   }, 'Parse::RecDescent::Production' )
                                                          ],
                                               'calls' => [],
                                               'opcount' => 0,
                                               'changed' => 0,
                                               'vars' => '',
                                               'name' => 'WS'
                                             }, 'Parse::RecDescent::Rule' ),
                              'IDENT' => bless( {
                                                  'impcount' => 0,
                                                  'line' => '58',
                                                  'prods' => [
                                                               bless( {
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'patcount' => 0,
                                                                        'strcount' => 0,
                                                                        'number' => 0,
                                                                        'error' => undef,
                                                                        'line' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'line' => '59',
                                                                                              'subrule' => 'macro_ident',
                                                                                              'argcode' => undef,
                                                                                              'implicit' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Subrule' ),
                                                                                     bless( {
                                                                                              'line' => '59',
                                                                                              'code' => '{$return = $item[1]}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'actcount' => 1
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => [
                                                               'macro_ident'
                                                             ],
                                                  'opcount' => 0,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'IDENT'
                                                }, 'Parse::RecDescent::Rule' ),
                              'macro_ident' => bless( {
                                                        'impcount' => 0,
                                                        'line' => '82',
                                                        'prods' => [
                                                                     bless( {
                                                                              'dircount' => 0,
                                                                              'uncommit' => undef,
                                                                              'patcount' => 0,
                                                                              'strcount' => 0,
                                                                              'number' => 0,
                                                                              'error' => undef,
                                                                              'line' => undef,
                                                                              'items' => [
                                                                                           bless( {
                                                                                                    'line' => '83',
                                                                                                    'subrule' => 'macro_nmstart',
                                                                                                    'argcode' => undef,
                                                                                                    'implicit' => undef,
                                                                                                    'matchrule' => 0,
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Subrule' ),
                                                                                           bless( {
                                                                                                    'min' => 0,
                                                                                                    'argcode' => undef,
                                                                                                    'matchrule' => 0,
                                                                                                    'lookahead' => 0,
                                                                                                    'subrule' => 'macro_nmchar',
                                                                                                    'line' => '83',
                                                                                                    'expected' => undef,
                                                                                                    'max' => 100000000,
                                                                                                    'repspec' => 's?'
                                                                                                  }, 'Parse::RecDescent::Repetition' ),
                                                                                           bless( {
                                                                                                    'line' => '83',
                                                                                                    'code' => '{$return = $item[1]; if (scalar(@{$item[2]}) > 0){$return .= join(\'\',@{$item[2]});} 1;}',
                                                                                                    'hashname' => '__ACTION1__',
                                                                                                    'lookahead' => 0
                                                                                                  }, 'Parse::RecDescent::Action' )
                                                                                         ],
                                                                              'actcount' => 1
                                                                            }, 'Parse::RecDescent::Production' )
                                                                   ],
                                                        'calls' => [
                                                                     'macro_nmstart',
                                                                     'macro_nmchar'
                                                                   ],
                                                        'opcount' => 0,
                                                        'changed' => 0,
                                                        'vars' => '',
                                                        'name' => 'macro_ident'
                                                      }, 'Parse::RecDescent::Rule' ),
                              'block' => bless( {
                                                  'impcount' => 1,
                                                  'line' => '14',
                                                  'prods' => [
                                                               bless( {
                                                                        'dircount' => 0,
                                                                        'uncommit' => undef,
                                                                        'patcount' => 0,
                                                                        'strcount' => 2,
                                                                        'number' => 0,
                                                                        'error' => undef,
                                                                        'line' => undef,
                                                                        'items' => [
                                                                                     bless( {
                                                                                              'description' => '\'\\{\'',
                                                                                              'line' => '14',
                                                                                              'pattern' => '{',
                                                                                              'hashname' => '__STRING1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'min' => 0,
                                                                                              'argcode' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'WS',
                                                                                              'line' => '14',
                                                                                              'expected' => undef,
                                                                                              'max' => 100000000,
                                                                                              'repspec' => 's?'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'min' => 0,
                                                                                              'argcode' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => '_alternation_1_of_production_1_of_rule_block',
                                                                                              'line' => '14',
                                                                                              'expected' => 'any, or block, or ATKEYWORD, or \';\'',
                                                                                              'max' => 100000000,
                                                                                              'repspec' => 's?'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'description' => '\'\\}\'',
                                                                                              'line' => '14',
                                                                                              'pattern' => '}',
                                                                                              'hashname' => '__STRING2__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Literal' ),
                                                                                     bless( {
                                                                                              'min' => 0,
                                                                                              'argcode' => undef,
                                                                                              'matchrule' => 0,
                                                                                              'lookahead' => 0,
                                                                                              'subrule' => 'WS',
                                                                                              'line' => '14',
                                                                                              'expected' => undef,
                                                                                              'max' => 100000000,
                                                                                              'repspec' => 's?'
                                                                                            }, 'Parse::RecDescent::Repetition' ),
                                                                                     bless( {
                                                                                              'line' => '14',
                                                                                              'code' => '{print "block\\n"}',
                                                                                              'hashname' => '__ACTION1__',
                                                                                              'lookahead' => 0
                                                                                            }, 'Parse::RecDescent::Action' )
                                                                                   ],
                                                                        'actcount' => 1
                                                                      }, 'Parse::RecDescent::Production' )
                                                             ],
                                                  'calls' => [
                                                               'WS',
                                                               '_alternation_1_of_production_1_of_rule_block'
                                                             ],
                                                  'opcount' => 0,
                                                  'changed' => 0,
                                                  'vars' => '',
                                                  'name' => 'block'
                                                }, 'Parse::RecDescent::Rule' ),
                              'STRING' => bless( {
                                                   'impcount' => 0,
                                                   'line' => '61',
                                                   'prods' => [
                                                                bless( {
                                                                         'dircount' => 0,
                                                                         'uncommit' => undef,
                                                                         'patcount' => 0,
                                                                         'strcount' => 0,
                                                                         'number' => 0,
                                                                         'error' => undef,
                                                                         'line' => undef,
                                                                         'items' => [
                                                                                      bless( {
                                                                                               'line' => '61',
                                                                                               'subrule' => 'macro_string',
                                                                                               'argcode' => undef,
                                                                                               'implicit' => undef,
                                                                                               'matchrule' => 0,
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Subrule' ),
                                                                                      bless( {
                                                                                               'line' => '61',
                                                                                               'code' => '{$return = $item[1]}',
                                                                                               'hashname' => '__ACTION1__',
                                                                                               'lookahead' => 0
                                                                                             }, 'Parse::RecDescent::Action' )
                                                                                    ],
                                                                         'actcount' => 1
                                                                       }, 'Parse::RecDescent::Production' )
                                                              ],
                                                   'calls' => [
                                                                'macro_string'
                                                              ],
                                                   'opcount' => 0,
                                                   'changed' => 0,
                                                   'vars' => '',
                                                   'name' => 'STRING'
                                                 }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_atrule' => bless( {
                                                                                          'impcount' => 0,
                                                                                          'line' => '115',
                                                                                          'prods' => [
                                                                                                       bless( {
                                                                                                                'dircount' => 0,
                                                                                                                'uncommit' => undef,
                                                                                                                'patcount' => 0,
                                                                                                                'strcount' => 0,
                                                                                                                'number' => 0,
                                                                                                                'error' => undef,
                                                                                                                'line' => undef,
                                                                                                                'items' => [
                                                                                                                             bless( {
                                                                                                                                      'line' => '115',
                                                                                                                                      'subrule' => 'block',
                                                                                                                                      'argcode' => undef,
                                                                                                                                      'implicit' => undef,
                                                                                                                                      'matchrule' => 0,
                                                                                                                                      'lookahead' => 0
                                                                                                                                    }, 'Parse::RecDescent::Subrule' )
                                                                                                                           ],
                                                                                                                'actcount' => 0
                                                                                                              }, 'Parse::RecDescent::Production' ),
                                                                                                       bless( {
                                                                                                                'dircount' => 0,
                                                                                                                'uncommit' => undef,
                                                                                                                'patcount' => 0,
                                                                                                                'strcount' => 1,
                                                                                                                'number' => 1,
                                                                                                                'error' => undef,
                                                                                                                'line' => '115',
                                                                                                                'items' => [
                                                                                                                             bless( {
                                                                                                                                      'description' => '\';\'',
                                                                                                                                      'line' => '115',
                                                                                                                                      'pattern' => ';',
                                                                                                                                      'hashname' => '__STRING1__',
                                                                                                                                      'lookahead' => 0
                                                                                                                                    }, 'Parse::RecDescent::Literal' ),
                                                                                                                             bless( {
                                                                                                                                      'min' => 0,
                                                                                                                                      'argcode' => undef,
                                                                                                                                      'matchrule' => 0,
                                                                                                                                      'lookahead' => 0,
                                                                                                                                      'subrule' => 'WS',
                                                                                                                                      'line' => '115',
                                                                                                                                      'expected' => undef,
                                                                                                                                      'max' => 100000000,
                                                                                                                                      'repspec' => 's?'
                                                                                                                                    }, 'Parse::RecDescent::Repetition' )
                                                                                                                           ],
                                                                                                                'actcount' => 0
                                                                                                              }, 'Parse::RecDescent::Production' )
                                                                                                     ],
                                                                                          'calls' => [
                                                                                                       'block',
                                                                                                       'WS'
                                                                                                     ],
                                                                                          'opcount' => 0,
                                                                                          'changed' => 0,
                                                                                          'vars' => '',
                                                                                          'name' => '_alternation_1_of_production_1_of_rule_atrule'
                                                                                        }, 'Parse::RecDescent::Rule' ),
                              'selector' => bless( {
                                                     'impcount' => 0,
                                                     'line' => '19',
                                                     'prods' => [
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 0,
                                                                           'error' => undef,
                                                                           'line' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'min' => 1,
                                                                                                 'argcode' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0,
                                                                                                 'subrule' => 'any',
                                                                                                 'line' => '19',
                                                                                                 'expected' => undef,
                                                                                                 'max' => 100000000,
                                                                                                 'repspec' => 's'
                                                                                               }, 'Parse::RecDescent::Repetition' ),
                                                                                        bless( {
                                                                                                 'line' => '20',
                                                                                                 'code' => '{
						$ruleset->add_selector(new CSS::Selector({\'name\' => $_})) 
						for(map{s/^\\s*(.*?)\\s*$/$1/;$_}split /\\s*,\\s*/, join(\'\',@{$item[1]}));
						1;
					}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => [
                                                                  'any'
                                                                ],
                                                     'opcount' => 0,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'selector'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'property' => bless( {
                                                     'impcount' => 0,
                                                     'line' => '34',
                                                     'prods' => [
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 0,
                                                                           'number' => 0,
                                                                           'error' => undef,
                                                                           'line' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '34',
                                                                                                 'subrule' => 'IDENT',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '34',
                                                                                                 'subrule' => 'OWS',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'line' => '34',
                                                                                                 'code' => '{$return = $item[1]}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => [
                                                                  'IDENT',
                                                                  'OWS'
                                                                ],
                                                     'opcount' => 0,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'property'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'FUNCTION' => bless( {
                                                     'impcount' => 0,
                                                     'line' => '75',
                                                     'prods' => [
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 0,
                                                                           'strcount' => 1,
                                                                           'number' => 0,
                                                                           'error' => undef,
                                                                           'line' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'line' => '75',
                                                                                                 'subrule' => 'macro_ident',
                                                                                                 'argcode' => undef,
                                                                                                 'implicit' => undef,
                                                                                                 'matchrule' => 0,
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Subrule' ),
                                                                                        bless( {
                                                                                                 'description' => '\'(\'',
                                                                                                 'line' => '75',
                                                                                                 'pattern' => '(',
                                                                                                 'hashname' => '__STRING1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Literal' ),
                                                                                        bless( {
                                                                                                 'line' => '75',
                                                                                                 'code' => '{$return = $item[1].\'(\'}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => [
                                                                  'macro_ident'
                                                                ],
                                                     'opcount' => 0,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'FUNCTION'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'OWS' => bless( {
                                                'impcount' => 0,
                                                'line' => '74',
                                                'prods' => [
                                                             bless( {
                                                                      'dircount' => 0,
                                                                      'uncommit' => undef,
                                                                      'patcount' => 0,
                                                                      'strcount' => 0,
                                                                      'number' => 0,
                                                                      'error' => undef,
                                                                      'line' => undef,
                                                                      'items' => [
                                                                                   bless( {
                                                                                            'min' => 0,
                                                                                            'argcode' => undef,
                                                                                            'matchrule' => 0,
                                                                                            'lookahead' => 0,
                                                                                            'subrule' => 'WS',
                                                                                            'line' => '74',
                                                                                            'expected' => undef,
                                                                                            'max' => 100000000,
                                                                                            'repspec' => 's?'
                                                                                          }, 'Parse::RecDescent::Repetition' ),
                                                                                   bless( {
                                                                                            'line' => '74',
                                                                                            'code' => '{$return = \'\'; if (scalar(@{$item[1]}) > 0){$return = \' \';} 1;}',
                                                                                            'hashname' => '__ACTION1__',
                                                                                            'lookahead' => 0
                                                                                          }, 'Parse::RecDescent::Action' )
                                                                                 ],
                                                                      'actcount' => 1
                                                                    }, 'Parse::RecDescent::Production' )
                                                           ],
                                                'calls' => [
                                                             'WS'
                                                           ],
                                                'opcount' => 0,
                                                'changed' => 0,
                                                'vars' => '',
                                                'name' => 'OWS'
                                              }, 'Parse::RecDescent::Rule' ),
                              'macro_nl' => bless( {
                                                     'impcount' => 0,
                                                     'line' => '112',
                                                     'prods' => [
                                                                  bless( {
                                                                           'dircount' => 0,
                                                                           'uncommit' => undef,
                                                                           'patcount' => 1,
                                                                           'strcount' => 0,
                                                                           'number' => 0,
                                                                           'error' => undef,
                                                                           'line' => undef,
                                                                           'items' => [
                                                                                        bless( {
                                                                                                 'description' => '/\\\\n|\\\\r\\\\n|\\\\r|\\\\f/',
                                                                                                 'pattern' => '\\n|\\r\\n|\\r|\\f',
                                                                                                 'mod' => '',
                                                                                                 'hashname' => '__PATTERN1__',
                                                                                                 'lookahead' => 0,
                                                                                                 'ldelim' => '/',
                                                                                                 'line' => '112',
                                                                                                 'rdelim' => '/'
                                                                                               }, 'Parse::RecDescent::Token' ),
                                                                                        bless( {
                                                                                                 'line' => '112',
                                                                                                 'code' => '{$return = $item[1]}',
                                                                                                 'hashname' => '__ACTION1__',
                                                                                                 'lookahead' => 0
                                                                                               }, 'Parse::RecDescent::Action' )
                                                                                      ],
                                                                           'actcount' => 1
                                                                         }, 'Parse::RecDescent::Production' )
                                                                ],
                                                     'calls' => [],
                                                     'opcount' => 0,
                                                     'changed' => 0,
                                                     'vars' => '',
                                                     'name' => 'macro_nl'
                                                   }, 'Parse::RecDescent::Rule' ),
                              'macro_string1' => bless( {
                                                          'impcount' => 1,
                                                          'line' => '98',
                                                          'prods' => [
                                                                       bless( {
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'patcount' => 0,
                                                                                'strcount' => 2,
                                                                                'number' => 0,
                                                                                'error' => undef,
                                                                                'line' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '\'"\'',
                                                                                                      'line' => '98',
                                                                                                      'pattern' => '"',
                                                                                                      'hashname' => '__STRING1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Literal' ),
                                                                                             bless( {
                                                                                                      'min' => 0,
                                                                                                      'argcode' => undef,
                                                                                                      'matchrule' => 0,
                                                                                                      'lookahead' => 0,
                                                                                                      'subrule' => '_alternation_1_of_production_1_of_rule_macro_string1',
                                                                                                      'line' => '104',
                                                                                                      'expected' => '/[\\\\t !#$%&(-~]/, or \'\\\\\', or \'\'\', or macro_nonascii, or macro_escape',
                                                                                                      'max' => 100000000,
                                                                                                      'repspec' => 's?'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'description' => '\'"\'',
                                                                                                      'line' => '104',
                                                                                                      'pattern' => '"',
                                                                                                      'hashname' => '__STRING2__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Literal' ),
                                                                                             bless( {
                                                                                                      'line' => '104',
                                                                                                      'code' => '{$return = \'"\'.join(\'\', @{$item[2]}).\'"\'}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'actcount' => 1
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'calls' => [
                                                                       '_alternation_1_of_production_1_of_rule_macro_string1'
                                                                     ],
                                                          'opcount' => 0,
                                                          'changed' => 0,
                                                          'vars' => '',
                                                          'name' => 'macro_string1'
                                                        }, 'Parse::RecDescent::Rule' ),
                              'macro_string2' => bless( {
                                                          'impcount' => 1,
                                                          'line' => '105',
                                                          'prods' => [
                                                                       bless( {
                                                                                'dircount' => 0,
                                                                                'uncommit' => undef,
                                                                                'patcount' => 0,
                                                                                'strcount' => 2,
                                                                                'number' => 0,
                                                                                'error' => undef,
                                                                                'line' => undef,
                                                                                'items' => [
                                                                                             bless( {
                                                                                                      'description' => '\'\'\'',
                                                                                                      'line' => '105',
                                                                                                      'pattern' => '\'',
                                                                                                      'hashname' => '__STRING1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::InterpLit' ),
                                                                                             bless( {
                                                                                                      'min' => 0,
                                                                                                      'argcode' => undef,
                                                                                                      'matchrule' => 0,
                                                                                                      'lookahead' => 0,
                                                                                                      'subrule' => '_alternation_1_of_production_1_of_rule_macro_string2',
                                                                                                      'line' => '111',
                                                                                                      'expected' => '/[\\\\t !#$%&(-~]/, or \'\\\\\', or \'"\', or macro_nonascii, or macro_escape',
                                                                                                      'max' => 100000000,
                                                                                                      'repspec' => 's?'
                                                                                                    }, 'Parse::RecDescent::Repetition' ),
                                                                                             bless( {
                                                                                                      'description' => '\'\'\'',
                                                                                                      'line' => '111',
                                                                                                      'pattern' => '\'',
                                                                                                      'hashname' => '__STRING2__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::InterpLit' ),
                                                                                             bless( {
                                                                                                      'line' => '111',
                                                                                                      'code' => '{return "\'".join(\'\', @{$item[2]})."\'"}',
                                                                                                      'hashname' => '__ACTION1__',
                                                                                                      'lookahead' => 0
                                                                                                    }, 'Parse::RecDescent::Action' )
                                                                                           ],
                                                                                'actcount' => 1
                                                                              }, 'Parse::RecDescent::Production' )
                                                                     ],
                                                          'calls' => [
                                                                       '_alternation_1_of_production_1_of_rule_macro_string2'
                                                                     ],
                                                          'opcount' => 0,
                                                          'changed' => 0,
                                                          'vars' => '',
                                                          'name' => 'macro_string2'
                                                        }, 'Parse::RecDescent::Rule' ),
                              'ATKEYWORD' => bless( {
                                                      'impcount' => 0,
                                                      'line' => '60',
                                                      'prods' => [
                                                                   bless( {
                                                                            'dircount' => 0,
                                                                            'uncommit' => undef,
                                                                            'patcount' => 0,
                                                                            'strcount' => 1,
                                                                            'number' => 0,
                                                                            'error' => undef,
                                                                            'line' => undef,
                                                                            'items' => [
                                                                                         bless( {
                                                                                                  'description' => '\'@\'',
                                                                                                  'line' => '60',
                                                                                                  'pattern' => '@',
                                                                                                  'hashname' => '__STRING1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Literal' ),
                                                                                         bless( {
                                                                                                  'line' => '60',
                                                                                                  'subrule' => 'macro_ident',
                                                                                                  'argcode' => undef,
                                                                                                  'implicit' => undef,
                                                                                                  'matchrule' => 0,
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Subrule' ),
                                                                                         bless( {
                                                                                                  'line' => '60',
                                                                                                  'code' => '{$return = \'@\'.$item[2]}',
                                                                                                  'hashname' => '__ACTION1__',
                                                                                                  'lookahead' => 0
                                                                                                }, 'Parse::RecDescent::Action' )
                                                                                       ],
                                                                            'actcount' => 1
                                                                          }, 'Parse::RecDescent::Production' )
                                                                 ],
                                                      'calls' => [
                                                                   'macro_ident'
                                                                 ],
                                                      'opcount' => 0,
                                                      'changed' => 0,
                                                      'vars' => '',
                                                      'name' => 'ATKEYWORD'
                                                    }, 'Parse::RecDescent::Rule' ),
                              'macro_string' => bless( {
                                                         'impcount' => 0,
                                                         'line' => '96',
                                                         'prods' => [
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'number' => 0,
                                                                               'error' => undef,
                                                                               'line' => undef,
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'line' => '96',
                                                                                                     'subrule' => 'macro_string1',
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'matchrule' => 0,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'line' => '96',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' ),
                                                                      bless( {
                                                                               'dircount' => 0,
                                                                               'uncommit' => undef,
                                                                               'patcount' => 0,
                                                                               'strcount' => 0,
                                                                               'number' => 1,
                                                                               'error' => undef,
                                                                               'line' => '97',
                                                                               'items' => [
                                                                                            bless( {
                                                                                                     'line' => '97',
                                                                                                     'subrule' => 'macro_string2',
                                                                                                     'argcode' => undef,
                                                                                                     'implicit' => undef,
                                                                                                     'matchrule' => 0,
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                            bless( {
                                                                                                     'line' => '97',
                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                     'hashname' => '__ACTION1__',
                                                                                                     'lookahead' => 0
                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                          ],
                                                                               'actcount' => 1
                                                                             }, 'Parse::RecDescent::Production' )
                                                                    ],
                                                         'calls' => [
                                                                      'macro_string1',
                                                                      'macro_string2'
                                                                    ],
                                                         'opcount' => 0,
                                                         'changed' => 0,
                                                         'vars' => '',
                                                         'name' => 'macro_string'
                                                       }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_macro_string1' => bless( {
                                                                                                 'impcount' => 0,
                                                                                                 'line' => '109',
                                                                                                 'prods' => [
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 1,
                                                                                                                       'strcount' => 0,
                                                                                                                       'number' => 0,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => undef,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'description' => '/[\\\\t !#$%&(-~]/',
                                                                                                                                             'pattern' => '[\\t !#$%&(-~]',
                                                                                                                                             'mod' => '',
                                                                                                                                             'hashname' => '__PATTERN1__',
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'ldelim' => '/',
                                                                                                                                             'line' => '110',
                                                                                                                                             'rdelim' => '/'
                                                                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '110',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 1,
                                                                                                                       'number' => 1,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '111',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'description' => '\'\\\\\'',
                                                                                                                                             'line' => '111',
                                                                                                                                             'pattern' => '\\',
                                                                                                                                             'hashname' => '__STRING1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '111',
                                                                                                                                             'subrule' => 'macro_nl',
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '111',
                                                                                                                                             'code' => '{$return = \'\'}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 1,
                                                                                                                       'number' => 2,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '112',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'description' => '\'\'\'',
                                                                                                                                             'line' => '112',
                                                                                                                                             'pattern' => '\'',
                                                                                                                                             'hashname' => '__STRING1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::InterpLit' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '112',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 0,
                                                                                                                       'number' => 3,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '113',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'line' => '113',
                                                                                                                                             'subrule' => 'macro_nonascii',
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '113',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 0,
                                                                                                                       'number' => 4,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '114',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'line' => '114',
                                                                                                                                             'subrule' => 'macro_escape',
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '114',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' )
                                                                                                            ],
                                                                                                 'calls' => [
                                                                                                              'macro_nl',
                                                                                                              'macro_nonascii',
                                                                                                              'macro_escape'
                                                                                                            ],
                                                                                                 'opcount' => 0,
                                                                                                 'changed' => 0,
                                                                                                 'vars' => '',
                                                                                                 'name' => '_alternation_1_of_production_1_of_rule_macro_string1'
                                                                                               }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_value' => bless( {
                                                                                         'impcount' => 0,
                                                                                         'line' => '111',
                                                                                         'prods' => [
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'number' => 0,
                                                                                                               'error' => undef,
                                                                                                               'line' => undef,
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'line' => '112',
                                                                                                                                     'subrule' => 'any',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'line' => '112',
                                                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                                                     'hashname' => '__ACTION1__',
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                                                          ],
                                                                                                               'actcount' => 1
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'number' => 1,
                                                                                                               'error' => undef,
                                                                                                               'line' => '113',
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'line' => '113',
                                                                                                                                     'subrule' => 'block',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'line' => '113',
                                                                                                                                     'code' => '{$return = $item[1]}',
                                                                                                                                     'hashname' => '__ACTION1__',
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                                                          ],
                                                                                                               'actcount' => 1
                                                                                                             }, 'Parse::RecDescent::Production' ),
                                                                                                      bless( {
                                                                                                               'dircount' => 0,
                                                                                                               'uncommit' => undef,
                                                                                                               'patcount' => 0,
                                                                                                               'strcount' => 0,
                                                                                                               'number' => 2,
                                                                                                               'error' => undef,
                                                                                                               'line' => '114',
                                                                                                               'items' => [
                                                                                                                            bless( {
                                                                                                                                     'line' => '114',
                                                                                                                                     'subrule' => 'ATKEYWORD',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'line' => '114',
                                                                                                                                     'subrule' => 'OWS',
                                                                                                                                     'argcode' => undef,
                                                                                                                                     'implicit' => undef,
                                                                                                                                     'matchrule' => 0,
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Subrule' ),
                                                                                                                            bless( {
                                                                                                                                     'line' => '114',
                                                                                                                                     'code' => '{$return = $item[1].$item[2]}',
                                                                                                                                     'hashname' => '__ACTION1__',
                                                                                                                                     'lookahead' => 0
                                                                                                                                   }, 'Parse::RecDescent::Action' )
                                                                                                                          ],
                                                                                                               'actcount' => 1
                                                                                                             }, 'Parse::RecDescent::Production' )
                                                                                                    ],
                                                                                         'calls' => [
                                                                                                      'any',
                                                                                                      'block',
                                                                                                      'ATKEYWORD',
                                                                                                      'OWS'
                                                                                                    ],
                                                                                         'opcount' => 0,
                                                                                         'changed' => 0,
                                                                                         'vars' => '',
                                                                                         'name' => '_alternation_1_of_production_1_of_rule_value'
                                                                                       }, 'Parse::RecDescent::Rule' ),
                              '_alternation_1_of_production_1_of_rule_macro_string2' => bless( {
                                                                                                 'impcount' => 0,
                                                                                                 'line' => '109',
                                                                                                 'prods' => [
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 1,
                                                                                                                       'strcount' => 0,
                                                                                                                       'number' => 0,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => undef,
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'description' => '/[\\\\t !#$%&(-~]/',
                                                                                                                                             'pattern' => '[\\t !#$%&(-~]',
                                                                                                                                             'mod' => '',
                                                                                                                                             'hashname' => '__PATTERN1__',
                                                                                                                                             'lookahead' => 0,
                                                                                                                                             'ldelim' => '/',
                                                                                                                                             'line' => '110',
                                                                                                                                             'rdelim' => '/'
                                                                                                                                           }, 'Parse::RecDescent::Token' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '110',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 1,
                                                                                                                       'number' => 1,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '111',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'description' => '\'\\\\\'',
                                                                                                                                             'line' => '111',
                                                                                                                                             'pattern' => '\\',
                                                                                                                                             'hashname' => '__STRING1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '111',
                                                                                                                                             'subrule' => 'macro_nl',
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '111',
                                                                                                                                             'code' => '{$return = \'\'}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 1,
                                                                                                                       'number' => 2,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '112',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'description' => '\'"\'',
                                                                                                                                             'line' => '112',
                                                                                                                                             'pattern' => '"',
                                                                                                                                             'hashname' => '__STRING1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Literal' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '112',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 0,
                                                                                                                       'number' => 3,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '113',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'line' => '113',
                                                                                                                                             'subrule' => 'macro_nonascii',
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '113',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' ),
                                                                                                              bless( {
                                                                                                                       'dircount' => 0,
                                                                                                                       'uncommit' => undef,
                                                                                                                       'patcount' => 0,
                                                                                                                       'strcount' => 0,
                                                                                                                       'number' => 4,
                                                                                                                       'error' => undef,
                                                                                                                       'line' => '114',
                                                                                                                       'items' => [
                                                                                                                                    bless( {
                                                                                                                                             'line' => '114',
                                                                                                                                             'subrule' => 'macro_escape',
                                                                                                                                             'argcode' => undef,
                                                                                                                                             'implicit' => undef,
                                                                                                                                             'matchrule' => 0,
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Subrule' ),
                                                                                                                                    bless( {
                                                                                                                                             'line' => '114',
                                                                                                                                             'code' => '{$return = $item[1]}',
                                                                                                                                             'hashname' => '__ACTION1__',
                                                                                                                                             'lookahead' => 0
                                                                                                                                           }, 'Parse::RecDescent::Action' )
                                                                                                                                  ],
                                                                                                                       'actcount' => 1
                                                                                                                     }, 'Parse::RecDescent::Production' )
                                                                                                            ],
                                                                                                 'calls' => [
                                                                                                              'macro_nl',
                                                                                                              'macro_nonascii',
                                                                                                              'macro_escape'
                                                                                                            ],
                                                                                                 'opcount' => 0,
                                                                                                 'changed' => 0,
                                                                                                 'vars' => '',
                                                                                                 'name' => '_alternation_1_of_production_1_of_rule_macro_string2'
                                                                                               }, 'Parse::RecDescent::Rule' )
                            },
                 'namespace' => 'Parse::RecDescent::namespace000001',
                 '_check' => {
                               'prevline' => '',
                               'prevcolumn' => '',
                               'thiscolumn' => '',
                               'prevoffset' => '',
                               'thisoffset' => '',
                               'itempos' => ''
                             },
                 '_AUTOACTION' => undef,
                 'localvars' => ' $all_rulesets $ruleset $value',
                 'startcode' => ''
               }, 'Parse::RecDescent' );
}