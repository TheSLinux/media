## Purpose

This repository contains some media files for the project `TheSLinux`.

## List of files

* `logo.svg`: The official logo of `TheSLinux`. This logo is using the
  font `Black Chancery` by `Doug Miles`. The font can be used freely
  for commercial purpose and it can be downloaded from
  http://www.1001fonts.com/blackchancery-font.html .
  _(If you think this font may cause any problem with our license system,
  feel free to let us now and/or dicuss on `TheSLinux` lists.)_

* `tsl.svg`: A `short` version of our logo, that contains the main
  characters (`T`, `S`, `L`). The first version only contains `T` and `S`.
  We use the primary color from the `scheme0`.

* `color-scheme0.html`: Our main color palette. See below.

* `bin/favicon-ico-creator.sh`: A Bash script that generates a multiple
  resolution file `favicon.ico` to show on browsers' address bar.

## Color palette

We use a common color palette (scheme) for all media files. Our first
scheme is **scheme0** that can be found on
  [color-scheme0.html](color-scheme0.html) _(HTML source)_,
and can be viewed online at
  http://theslinux.org/doc/homepage/color/scheme0/ .

## How to get a bitmap version

There are many ways to get a bitmap version from the source `.svg`.
Because we are using `Inkscape` to edit the source file, you can use
the program's export function, or something like

    inkscape -z -e output.png -w 1024 logo.svg

You only need to specify the width `-w 1024` because the height will be
calculated automatically. Replace `1024` with your input.

If you want to get the `favicon.ico` please take a look at the script
`./bin/favicon-ico-creator.sh`.

## License

Each file should embed license information in its metadata fields
and you can view them by using the tool `exiftool` as below
_(or any tool that can read `exif` data)_

    exiftool logo.svg

In most cases, the licenses don't allow you to use the work for any
commercial purpose.

If the file doesn't embed any license information, it is implicitly
distributed under the license [CC BY-NC-ND 3.0][by-nc-nd].

[by-nc-nd]: http://creativecommons.org/licenses/by-nc-nd/3.0/
