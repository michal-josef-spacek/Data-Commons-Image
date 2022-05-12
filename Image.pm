package Data::Commons::Image;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_length check_required);

our $VERSION = 0.01;

has comment => (
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

	# Check image.
	check_required($self, 'image');
	check_length($self, 'image', 255);

	return;
}

1;

__END__
