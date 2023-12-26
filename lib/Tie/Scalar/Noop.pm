package Tie::Scalar::Noop;

# IFUNBUILT
use strict;
# END IFUNBUILT

# AUTHORITY
# DATE
# DIST
# VERSION

sub TIESCALAR {
    my $class = shift;

    bless [], $class;
}

sub FETCH {}

sub STORE {}

sub UNTIE {}

# DESTROY

1;
# ABSTRACT: Tied scalar that does nothing

=for Pod::Coverage ^(.+)$

=head1 SYNOPSIS

 use Tie::Scalar::Noop;

 tie my $scalar, 'Tie::Scalar::Noop';


=head1 DESCRIPTION

This class implements a tied scalar that does nothing. For benchmark purposes.


=head1 SEE ALSO

L<perltie>

Other C<Tie::*::Noop>

L<Bencher::Scenarios::Tie>

=cut
