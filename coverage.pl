#!/usr/bin/perl -w

use strict;

print `cover -delete`;
print `HARNESS_PERL_SWITCHES=-MDevel::Cover make test`;
print `cover -outputdir cover`;
