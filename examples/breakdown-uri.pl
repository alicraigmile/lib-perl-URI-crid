#!/usr/bin/env perl

# Example script making use of URI to process URIs with the 
# 'urn' scheme

use strict;
use URI::crid;

my @uris = (
	URI->new('urn:mediastore:timeline:123'),
	URI->new('/home/project/applications/data/foo/junk/123.txt'),
	URI->new('crid://bbc.co.uk/b1234567'),
);

# read from command line, and assume any arguments are URIs
if (@ARGV) {
    @uris = map { URI->new($_) } @ARGV;
}

foreach my $uri (@uris) {
	print "URI = $uri\n";
	foreach my $t (qw(scheme path nid nss authority host data userinfo fragment )) {
		print sprintf("%10s : %s\n", $t, eval('$uri->'.$t));
	}
        print "\n";
}
