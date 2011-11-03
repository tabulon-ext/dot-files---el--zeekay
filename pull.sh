#!/bin/sh

basedir="$( cd -P "$( dirname "$0" )" && pwd )"

cd $basedir
hg pull && hg up

for dir in dot*; do
    dir=$basedir/$dir
    if [ -d "$dir" ] && [ -f "$dir/.hg/hgrc" ]; then
        cd $dir
        hg pull && hg up
    fi
done
