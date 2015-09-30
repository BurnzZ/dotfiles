#! /bin/bash

# modified from this source:
#   http://superuser.com/questions/285381/how-does-the-tmux-color-palette-work

for i in {0..255}; do
    printf " \x1b[38;5;${i}mcolour${i} "
    if !(( $i % 6 )); then
        printf "\n"
    fi
done
