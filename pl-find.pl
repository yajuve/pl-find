#!/usr/bin/perl -w
use strict;
use utf8;


my $path = $ARGV[0];
my $word = $ARGV[1];

open FILE, '<:encoding(UTF-8)', $path or die "Error $path : $!";
