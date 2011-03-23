use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'CSS',
    'VERSION_FROM'	=> 'CSS.pm',
    'PREREQ_PM'		=> {
					Parse::RecDescent	=> 1.964,
					Test::Simple		=> 0,
				},
);
