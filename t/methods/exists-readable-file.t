use v6;
use lib 'lib';
use File::Presence;
use Test;

plan(1);

subtest({
    my Str:D $file = 't/methods/show.t';
    ok(File::Presence.exists-readable-file($file));
    nok(File::Presence.exists-readable-file('bzzt'));
});

# vim: set filetype=raku foldmethod=marker foldlevel=0:
