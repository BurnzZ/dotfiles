#! /bin/bash

# This script will install the dot files into the home dir
declare -a exception=(install.sh README.md)


# loop through the files
for file in ./*
do
    if [$file == $exception]; then
        echo $file
    fi
done
