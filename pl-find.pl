#!/usr/bin/perl -w
use strict;
use utf8;

my $args = $#ARGV + 1;
die "\033[1;31m[ERROR]\033[0m needs 2 args FILE and WORD : ./pl-find.pl FILE WORD\n" if $args != 2;

my $path = $ARGV[0];
my $word = $ARGV[1];

open FILE, '<:encoding(UTF-8)', $path or die "Error $path : $!";

while (<FILE>) {
	$_ =~ s/$word/\033[1;32m$word\033[0m/ig if /$word/i; 
	print "$. - $_" if /$word/i;
}

close FILE;

