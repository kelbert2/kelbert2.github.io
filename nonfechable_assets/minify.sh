#!/bin/bash
# run with
# bash minify.sh filename.svg
# filename.svg can be autocompleted

# testing
#hello="Hello World!"
#echo $hello

# bash for linux svg minification using svgo
# get just the input filename
cleaninput=$(basename $1 .svg)
# echo $cleaninput
svgo $cleaninput.svg -o ../assets/$cleaninput.min.svg
