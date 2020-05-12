#!/bin/bash

if [ ! -d "dist" ]; then
    # Создать папку, только если ее не было
    mkdir dist
fi

for filename in $(ls $1/*.ttf)
do
basename=${filename%.*}
dirname=${filename%/*.*}

if [ ! -d "dist/$dirname" ]; then
    # Создать папку, только если ее не было
    mkdir dist/$dirname
fi

pyftsubset $basename.ttf --output-file=dist/$basename.ttf --unicodes-file=codes.txt
ttf2woff dist/$basename.ttf dist/$basename.woff
cat dist/$basename.ttf | ttf2woff2 >> dist/$basename.woff2

done
