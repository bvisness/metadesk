#!/bin/bash

###### Get Paths ##############################################################
og_path=$PWD
cd "$(dirname "$0")"
cd ..

###### Script #################################################################
echo "~~~ Build All Exampes ~~~"
bin/bld_core.sh show_ctx

examps="examples"

bin/bld_core.sh unit type_metadata $examps/type_metadata/type_metadata.c
bin/bld_core.sh unit hello_world   $examps/intro/hello_world.c
bin/bld_core.sh unit parse_check   $examps/intro/parse_check.c
bin/bld_core.sh unit datadesk_like $examps/intro/datadesk_like_template.c
bin/bld_core.sh unit user_errors   $examps/user_errors/user_errors.c

if [ -d $examps/type_metadata/generated/type_info_meta.h ]; then
bin/bld_core.sh unit type_info     $examps/type_metadata/type_info_final_program.c
fi

echo

###### Restore Path ###########################################################
cd $og_path
