# personal-website

Resume website for Kristianna Elbert. [Live link.](https://kelbert2.github.io "Quite a lovely website")

## Notes on Updating This Site

I've been using an Windows Subsystem for Linux to run the following custom minification scripts. When troubleshooting the scripts, remember there can be some disconnect between Windows and Linux when it comes to writing and running.

When adding a new position, remember to adjust the Skills section as well and link to the new resume, itself uploaded to the `assets` folder.

Logos can be traced into .svgs in Inkscape and hex color values can be picked with the eyedropper tool. Be sure to delete the original bitmap after tracing, set the fill color, and then Edit > Resize Page to Selection.

To minify the .svg, move the file into `nonfetchable_assets` and run

```bash
bash minify-svg.sh filename.svg
```

`filename.min.svg` will appear in the `assets` folder. You can make any additional edits there. If you want an inline svg, you will likely want to make the viewbox the `"0 0 width height"` so it scales correctly.

Minify the project with

```bash
bash minify-files.sh
```

This will minify `/dev/index-dirty.html`, `/dev/scripts/script.js`, `/dev/css/styles.css`, and `/dev/css/scripted-styles.css`. You can run the project, edit the dev files, minify, and refresh to see your changes.
