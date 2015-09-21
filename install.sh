#! /bin/bash

declare -a files=(aliases bash_profile bash_prompt exports functions gitconfig ackrc)

# loop through the files
for file in ${files[@]}; do
    sourceFile="$(pwd)/$file"
    targetFile="$HOME/$(printf "%s" ".$file" | sed "s/.*\/\(.*\)/\1/g")"

    ln -fs $sourceFile $targetFile
done
