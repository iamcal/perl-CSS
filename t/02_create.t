use Test::More tests => 5;

use CSS;

my $css;


#
# try passing hash pairs directly
#

$css = new CSS (grammar => 'CSS10');
is($css->{grammar}, 'CSS10');


#
# try passing a hash ref
#

$css = new CSS ({grammar => 'CSS10'});
is($css->{grammar}, 'CSS10');


#
# check we can pass an adaptor
#

is(CSS->new()->{adaptor}, 'CSS::Adaptor');
is(CSS->new(adaptor => 'CSS::Adaptor::Pretty')->{adaptor}, 'CSS::Adaptor::Pretty');


#
# check we didn't pass an array ref (wtf)
#

isa_ok(CSS->new([]), 'CSS');


1;