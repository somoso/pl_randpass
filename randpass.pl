#!/usr/bin/perl

use strict;
use warnings;

my $file = '/usr/share/dict/words';

open my $info, $file or die "Could not open $file: $!";

my $count = 0;
while(my $line = <$info>) {
    $count++;
}

close $info;

if($count >= 4) {
    my $split = int($count / 4);
    my $firstQuarter = int(rand($split));
    my $secondQuarter = int(rand($split)) + $split;
    my $thirdQuarter = int(rand($split)) + ($split * 2);
    my $fourthQuarter = int(rand($split)) + ($split * 3);

    open my $words, $file or die "Could not open $file: $!";

    my $firstWord;
    my $secondWord;
    my $thirdWord;
    my $fourthWord;

	my $count = 0;
	while(my $line = <$words>) {
		$line =~ s/\R//g;
		# $line =~ s/\'s//g;
		if ($count == $firstQuarter) {
			$firstWord = $line;
		} elsif ($count == $secondQuarter) {
			$secondWord = $line;
		} elsif ($count == $thirdQuarter) {
			$thirdWord = $line;
		} elsif ($count == $fourthQuarter) {
			$fourthWord = $line;
		}
	    $count++;
	}

	my @randWord = ($firstWord,$secondWord,$thirdWord,$fourthWord);


	for ($count = 3; $count >= 0; $count--) {
		# print "randword: " . @randWord . "\n";
		# print $count . " ";
		my $nextWord = int(rand($count));
		print $randWord[$nextWord] . " ";
		splice(@randWord, $nextWord, 1);
	}


	print "\n";
}