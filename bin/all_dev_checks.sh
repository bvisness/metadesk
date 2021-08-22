#!/bin/bash

###### Get Paths ##############################################################
og_path=$PWD
cd "$(dirname "$0")"
cd ..
root_path=$PWD
 bin_path=$root_path/bin

###### Bin Scripts ############################################################
$bin_path/build_tests.sh
$bin_path/build_samples.sh
$bin_path/run_tests.sh
$bin_path/run_samples.sh

###### Restore Path ###########################################################
cd $og_path
