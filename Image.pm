package Data::Commons::Image;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_length check_required);

extends 'Data::Image';

our $VERSION = 0.01;

has commons_name => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check commons_name.
	check_required($self, 'commons_name');
	check_length($self, 'commons_name', 255);

	return;
}

1;

__END__

=pod

=encoding utf8

=head1 NAME

Data::Commons::Image - Data object for Wikimedia Commons image.

=head1 SYNOPSIS

 use Data::Commons::Image;

 my $obj = Data::Commons::Image->new(%params);
 my $author = $obj->author;
 my $comment = $obj->comment;
 my $commons_name = $obj->commons_name;
 my $height = $obj->height;
 my $id = $obj->id;
 my $size = $obj->size;
 my $url = $obj->url;
 my $url_cb = $obj->url_cb;
 my $width = $obj->width;

=head1 DESCRIPTION

Data object for Wikimedia Commons image. Inherits L<Data::Image> common object.

=head1 METHODS

=head2 C<new>

 my $obj = Data::Commons::Image->new(%params);

Constructor.

Returns instance of object.

=over 8

=item * C<author>

Image author.
It's optional.
Default value is undef.

=item * C<comment>

Image comment.
It's optional.
Default value is undef.

=item * C<commons_name>

Image name in Wikimedia Commons.
It's required.

=item * C<height>

Image height.
It's optional.
Default value is undef.

=item * C<id>

Image id.
It's optional.
Default value is undef.

=item * C<size>

Image size.
It's optional.
Default value is undef.

=item * C<url>

URL of image.
It's optional.
Default value is undef.

=item * C<url_cb>

URL callback. To get URL from code.
It's optional.
Default value is undef.

=item * C<width>

Image width.
It's optional.
Default value is undef.

=back

=head2 C<author>

 my $author = $obj->author;

Get image author.

Returns string.

=head2 C<comment>

 my $comment = $obj->comment;

Get image comment.

Returns string.

=head2 C<commons_name>

 my $commons_name = $obj->commons_name;

Get image name in Wikimedia Commons.

Returns string.

=head2 C<height>

 my $height = $obj->height;

Get image height.

Returns number.

=head2 C<id>

 my $id = $obj->id;

Get image id.

Returns number.

=head2 C<size>

 my $size = $obj->size;

Get image size.

Returns number.

=head2 C<url>

 my $url = $obj->url;

Get URL of image.

Returns string.

=head2 C<url_cb>

 my $url_cb = $obj->url_cb;

Get URL callback.

Returns code.

=head2 C<width>

 my $width = $obj->width;

Get image width.

Returns number.

=head1 EXAMPLE

=for comment filename=create_and_print_image.pl

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

=head1 DEPENDENCIES

L<Data::Image>,
L<Mo>,
L<Mo::utils>.

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Data-Commons-Image>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2022 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.01

=cut
