#!/usr/bin/perl -w

# Formal testing for PPI::Format::Apache

# This test only tests that the module compiles.

use strict;
use File::Spec ();
use lib File::Spec->catdir( File::Spec->updir, File::Spec->updir, 'modules' ), # Development testing
        File::Spec->catdir( File::Spec->updir, 'lib' );                        # Installation testing
use UNIVERSAL 'isa';
use Test::More tests => 2;

# Set up any needed globals
BEGIN {
        $| = 1;
}




# Check their perl version
BEGIN {
        ok( $] >= 5.005, "Your perl is new enough" );
}





# Does the module load
use_ok( 'PPI::Format::Apache' );

exit();
