use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'myapp',
    AUTHOR              => q{Steven Jenkins<steven.jenkins@gmail.com>},
    VERSION_FROM        => 'lib/myapp.pm',
    ABSTRACT            => 'Prototype dashboard for OpenEFS',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'JSON'       => 0,
        'Test::More' => 0,
        'YAML'       => 0,
        'Dancer'     => 1.3095,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'myapp-*' },
);
