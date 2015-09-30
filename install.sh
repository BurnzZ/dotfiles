#! /bin/bash

declare -a files=(aliases bash_profile bash_prompt exports functions gitconfig ackrc extra tmux.conf)

# loop through the files
for file in ${files[@]}; do
    sourceFile="$(pwd)/$file"
    targetFile="$HOME/$(printf "%s" ".$file" | sed "s/.*\/\(.*\)/\1/g")"
    
    if [ -e $file ]; then
        ln -fs $sourceFile $targetFile
    fi
done
