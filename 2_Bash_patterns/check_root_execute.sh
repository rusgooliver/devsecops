#!/bin/bash
# check run scrypt from root
nameuser="id -nu"
run_file="basename $0"
if [ "$nameuser" != 'root' ]
    then echo "Must be root to run $run_file"
exit 1
fi
