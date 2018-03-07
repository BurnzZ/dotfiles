#! /bin/bash

declare -a files=(aliases bash_profile bash_prompt exports functions gitconfig ackrc tmux.conf zshrc)

# loop through the files declared above and create a symlink of them in $HOME
for file in ${files[@]}; do
    sourceFile="$(pwd)/$file"
    targetFile="$HOME/$(printf "%s" ".$file" | sed "s/.*\/\(.*\)/\1/g")"
    
    if [ -e $file ]; then
        echo -e "Creating symlink $sourceFile -> $targetFile\n"
        ln -fs $sourceFile $targetFile
    fi
done
