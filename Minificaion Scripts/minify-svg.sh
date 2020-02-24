#!/bin/bash
# run with
# bash minify-svg.sh filename.svg
# filename.svg can be autocompleted

# testing
#hello="Hello World!"
#echo $hello

# bash for linux svg minification using svgo
# get just the input filename
cleaninput=$(basename $1 .svg)
# echo $cleaninput
svgo ../nonfechable_assets/$cleaninput.svg -o ../assets/$cleaninput.min.svg