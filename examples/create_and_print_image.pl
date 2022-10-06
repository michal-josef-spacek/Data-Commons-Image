#!/usr/bin/env perl

use strict;
use warnings;

use Data::Commons::Image;

my $obj = Data::Commons::Image->new(
        'author' => 'Zuzana Zonova',
        'comment' => 'Michal from Czechia',
        'commons_name' => 'Michal_from_Czechia.jpg',
        'height' => 2730,
        'size' => 1040304,
        'url' => 'https://upload.wikimedia.org/wikipedia/commons/a/a4/Michal_from_Czechia.jpg',
        'width' => 4096,
);

# Print out.
print 'Author: '.$obj->author."\n";
print 'Comment: '.$obj->comment."\n";
print 'Wikimedia Commons name: '.$obj->commons_name."\n";
print 'Height: '.$obj->height."\n";
print 'Size: '.$obj->size."\n";
print 'URL: '.$obj->url."\n";
print 'Width: '.$obj->width."\n";

# Output:
# Author: Zuzana Zonova
# Comment: Michal from Czechia
# Wikimedia Commons name: Michal_from_Czechia.jpg
# Height: 2730
# Size: 1040304
# URL: https://upload.wikimedia.org/wikipedia/commons/a/a4/Michal_from_Czechia.jpg
# Width: 4096