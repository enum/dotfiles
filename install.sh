#!/bin/bash

set -u

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue

    echo "$f"
    ln -snfv `pwd`/${f} ${HOME}/${f}
done
