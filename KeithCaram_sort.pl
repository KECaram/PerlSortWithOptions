#!/usr/bin/perl
# Keith Caram
# INFO.305.061: Survey of Python, Perl, and PHP
# Assignment #1 - Simple Perl Sort Program
#					Program Summary
# This program takes any number of string arguments from the
# command line, looks for a sort flag in the command line arguments
# (either "-r" or "--reverse") which indicates if the user wants a 
# reverse ASCII sort or just an ASCII sort. Then the program checks if 
# there are more than two strings be sorted, and if there are at 
# least two strings to be sorted, they are sorted accordingly.

@sort_flag = grep /-/, @ARGV;
@just_names = grep !/-/, @ARGV;

$length = @just_names;

if($length < 2)
{
	print("Invalid command line arguments to progam. Please supply two or more strings to sort.\n");
}
elsif($sort_flag[0] eq "-r" | $sort_flag[0] eq "--reverse")
{	
	@reverse_sort = reverse sort @just_names;
	print "@reverse_sort\n";
}
elsif($sort_flag[0] eq "")
{
	@sorted_names = sort @just_names;
	print"@sorted_names\n";
}
else
{
	$sort_flag[0] =~ s/[^a-zA-Z0-9]*//g;
	print "$sort_flag[0] is an invalid command line option.\n";
};
