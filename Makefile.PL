require 5.000;
use ExtUtils::MakeMaker;
WriteMakefile(
	'NAME'         => 'PPI::Format::Apache',
	'VERSION_FROM' => 'lib/PPI/Format/Apache.pm',
	'PREREQ_PM'    => {
		File::Spec => 0.82,
		PPI        => 0.803,
		Apache     => 0,
		Test::More => 0,
	},
	($] >= 5.005) ? (
		'AUTHOR'   => 'Adam Kennedy (cpan@ali.as)',
		'ABSTRACT' => 'Apache mod_perl handler to PPI syntax highlighting',
	) : (),
);
