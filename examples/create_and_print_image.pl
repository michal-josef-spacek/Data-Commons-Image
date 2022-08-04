#!/usr/bin/env perl

use strict;
use warnings;

use Data::Commons::Image;

my $obj = Data::Commons::Image->new(
        'comment' => 'Michal from Czechia',
        'image' => 'Michal_from_Czechia.jpg',
);

# Print out.
print 'Comment: '.$obj->comment."\n";
print 'Image: '.$obj->image."\n";

# Output:
# Comment: Michal from Czechia
# Image: Michal_from_Czechia.jpg