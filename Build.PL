use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'MIDI::Tweaks',
    license             => 'perl',
    dist_author         => 'Johan Vromans <jvromans@squirrel.nl>',
    dist_version_from   => 'lib/MIDI/Tweaks.pm',
    script_files	=> [ map { "script/$_" }
			         qw(midi-tweak midi-dump) ],
    requires => {
        'MIDI' => '0.80',
    },
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'MIDI-Tweaks-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
