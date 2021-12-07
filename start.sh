#!/bin/bash

# get the absoulte path of this file
file_path=$(dirname $(readlink -f "$0"))

# source the config file
source $file_path/proxy_config.sh
source $file_path/replace_config.sh

function enable_script() {
    for script in $*
    do
        enable_$script
    done
}
