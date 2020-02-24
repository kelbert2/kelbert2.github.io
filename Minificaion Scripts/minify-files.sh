#!/bin/bash
# run with
# bash minify-files.sh

# Beware adding line breaks as may cause \r command not found errors due to different carriage returns between windows and unix, such as when run on wsl. Fix by ensuring conversion:
# dos2unix minify-files.sh

#postcss --use autoprefixer -c options.json -o main.css css/*.css
html-minifier --collapse-whitespace --remove-comments --remove-optional-tags --remove-redundant-attributes --remove-script-type-attributes --remove-tag-whitespace --use-short-doctype --minify-css true --minify-js true ../dev/index-dirty.html -o ../index.html

uglifyjs ../dev/scripts/script.js -o ../scripts/script.min.js

cleancss -o ../css/styles.min.css ../dev/css/styles.css

cleancss -o ../css/scripted-styles.min.css ../dev/css/scripted-styles.css
