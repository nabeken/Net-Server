use ExtUtils::MakeMaker;

my %args =
  (
   NAME	         => 'Net::Server',
   VERSION_FROM  => 'lib/Net/Server.pm',
   ABSTRACT_FROM => 'lib/Net/Server.pod',
   AUTHOR        => 'Paul Seamons (paul@seamons.com) and Rob Brown (bbb@cpan.org)',
   PREREQ_PM  => {
     'IO::Socket'        => 0,
     'IO::Socket::INET6' => 2.54,
     Socket              => 0,
     Socket6             => 0,
     POSIX               => 0,
   },

   dist          => {
     DIST_DEFAULT => 'all tardist',
     COMPRESS     => 'gzip -vf',
     SUFFIX       => '.gz',
   },

   clean         => {
     FILES        => '*~',
   },

   realclean     => {
     FILES        => '*~',
   },

   );

WriteMakefile(%args);

1;
