#!/bin/sh
verbose=1
set -e

if test "x$builddir" = "x"; then builddir=`pwd`; fi
if test "x$srcdir" = "x"; then srcdir=`dirname $0`; fi

# Make buildir absolute
cd $builddir
builddir=`pwd`

# Make srcdir be absolute
cd $srcdir
srcdir=`pwd`
cd $builddir

# Setup
rm -fr ./tmp1 ./tmp2
PASS=1

CLASSIC="ref_const_test.nc"
"EXTENDED="ref_tst_compounds.nc


# Dump a classic file two ways and compare
ncdump 


# Cleanup
rm -fr ./tmp1 ./tmp2

if test "x$PASS" = x1 ; then CODE=0; else CODE=1; fi
exit $CODE


