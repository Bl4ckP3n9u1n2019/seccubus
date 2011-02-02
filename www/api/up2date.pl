#!/usr/bin/env perl
# ------------------------------------------------------------------------------
# $Id$
# ------------------------------------------------------------------------------
# List the scans
# ------------------------------------------------------------------------------
# Copyright (C) 2008  Schuberg Philis, Frank Breedijk - Under GPLv3
# ------------------------------------------------------------------------------

# Fixes Ticket [ 2981907 ] - Online up2date check
use strict;
use lib "..";
use CGI;
use LWP::Simple;
use SeccubusV2;

#my (
   #);

my $query = CGI::new();

print $query->header("text/plain");

my $verdict = get("http://v2.seccubus.com/up2date.pl?version=$SeccubusV2::VERSION");
$verdict = "Cannot check version online!" unless $verdict;
print $verdict;
