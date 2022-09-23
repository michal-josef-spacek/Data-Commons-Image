package Data::Commons::Image;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_length check_number check_required);

our $VERSION = 0.01;

has comment => (
	is => 'ro',
);

has id => (
	is => 'ro',
);

# Image from Commons.
has image => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check comment.
	check_length($self, 'comment', 1000);

	# Check id.
	check_number($self, 'id');

	# Check image.
	check_required($self, 'image');
	check_length($self, 'image', 255);

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
 my $comment = $obj->comment;
 my $id = $obj->id;
 my $image = $obj->image;

=head1 METHODS

=head2 C<new>

 my $obj = Data::Commons::Image->new(%params);

Constructor.

Returns instance of object.

=over 8

=item * C<comment>

Image comment.
It's optional.
Default value is undef.

=item * C<id>

Image id.
It's optional.
Default value is undef.

=item * C<image>

Image name in Wikimedia Commons.
It's required.

=back

=head2 C<comment>

 my $comment = $obj->comment;

Get image comment.

Returns string.

=head2 C<id>

 my $id = $obj->id;

Get image id.

Returns number.

=head2 C<image>

 my $image = $obj->image;

Get image name in Wikimedia Commons.

Returns string.

=head1 EXAMPLE

=for comment filename=create_and_print_image.pl

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

=head1 DEPENDENCIES

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
