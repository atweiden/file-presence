use v6;
use lib 'lib';
use File::Presence;
use Test;

plan(1);

subtest({
    my Str:D $dir = 't/methods';
    ok(File::Presence.exists-readable-dir($dir));
    nok(File::Presence.exists-readable-dir('bzzt'));
});

# vim: set filetype=raku foldmethod=marker foldlevel=0:
