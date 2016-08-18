use v6;
use lib 'lib';
use File::Presence;
use Test;

plan 1;

subtest
{
    my Str $file = 't/methods/show.t';
    ok exists-readwriteable-file($file);
    nok exists-readwriteable-file('bzzt');
}

# vim: ft=perl6 fdm=marker fdl=0
