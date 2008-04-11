use ExtUtils::MakeMaker;

WriteMakefile(
	'NAME'		=> 'CSS',
	'VERSION_FROM'	=> 'lib/CSS.pm',
	'PREREQ_PM'	=> {
				'Test::More'	=> 0,
			},
);
