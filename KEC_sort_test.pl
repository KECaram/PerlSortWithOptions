#!/usr/bin/perl
# Keith Caram
# INFO.305.061: Survey of Python, Perl, and PHP
# Assignment #1 TEST CODE- Simple Perl Sort Program TEST CODE
# 					Program Summary
# This program tests various cases of the Simple Perl sort
# program: KeithCaram_sort.pl 

use Test::Simple tests => 6;

my $good_sort = qx(perl KeithCaram_sort.pl d c a);
my $good_reverse_letter = qx(perl KeithCaram_sort.pl a c d -r);
my $good_reverse_word = qx(perl KeithCaram_sort.pl a c --reverse d);
my $invalid_argument_num = qx(perl KeithCaram_sort.pl);
my $invalid_reverse = qx(perl KeithCaram_sort.pl a -r);
my $invalid_command = qx(perl KeithCaram_sort.pl a c d --foo);

ok($good_sort eq "a c d\n");
ok($good_reverse_letter eq "d c a\n");
ok($good_reverse_word eq "d c a\n");
ok($invalid_argument_num eq "Invalid command line arguments to progam. Please supply two or more strings to sort.\n");
ok($invalid_reverse eq "Invalid command line arguments to progam. Please supply two or more strings to sort.\n");
ok($invalid_command eq "foo is an invalid command line option.\n");