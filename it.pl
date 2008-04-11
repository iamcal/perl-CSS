$obj = new B;

exit;

package A;

sub new {
	my $self  =  { };
	bless($self, shift);

	$self->yay;

	return $self;
}

sub yay {
	print "yay\n";
}


package B;

use base ('A');

sub yay {
	print "hoopla\n";
}

1;
