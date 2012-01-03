# Do not edit this file - Generated by Perlito5 8.0
use v5;
use utf8;
use strict;
use warnings;
no warnings ('redefine', 'once', 'void', 'uninitialized', 'misc', 'recursion');
use Perlito5::Perl5::Runtime;
use Perlito5::Perl5::Prelude;
our $MATCH = Perlito5::Match->new();
{
package GLOBAL;
    sub new { shift; bless { @_ }, "GLOBAL" }
    use v5;
    {
    package Perlito5::Match;
        sub new { shift; bless { @_ }, "Perlito5::Match" }
        sub from { $_[0]->{from} };
        sub to { $_[0]->{to} };
        sub str { $_[0]->{str} };
        sub bool { $_[0]->{bool} };
        sub capture { $_[0]->{capture} };
        sub scalar {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            if (($self->{bool})) {
                if ((defined($self->{capture}))) {
                    return scalar ($self->{capture})
                };
                return scalar (substr($self->{str}, $self->{from}, (($self->{to} - $self->{from}))))
            }
            else {
                return scalar ('')
            }
        };
        sub string {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            if (($self->{bool})) {
                if ((defined($self->{capture}))) {
                    return scalar ($self->{capture})
                };
                return scalar (substr($self->{str}, $self->{from}, (($self->{to} - $self->{from}))))
            }
            else {
                return scalar ('')
            }
        }
    }

;
    {
    package Pair;
        sub new { shift; bless { @_ }, "Pair" }
        sub key { $_[0]->{key} };
        sub value { $_[0]->{value} };
        sub perl {
            my $List__ = bless \@_, "ARRAY";
            ((my  $self) = $List__->[0]);
            return scalar (($self->{key} . ' ' . chr(61) . '> ' . Main::perl($self->{value}, )))
        }
    }

;
    {
    package Main;
        sub new { shift; bless { @_ }, "Main" }
        sub to_lisp_identifier {
            my $List__ = bless \@_, "ARRAY";
            return scalar (('sv-' . $List__->[0]))
        };
        sub lisp_dump_object {
            my $List__ = bless \@_, "ARRAY";
            ((my  $class_name) = shift());
            ((my  $data) = shift());
            return scalar (($class_name . '( ' . Main::join((bless [ map { Main::perl( $_, , ) } @{( $data )} ], "ARRAY"), ', ') . ' )'))
        }
    }


}

1;
