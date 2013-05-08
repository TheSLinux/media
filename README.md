## Purpose

This repository contains some media files for the project `TheSLinux`.
Each files should embed license information in its metadata fields
and you can view them by using the tool `exiftool` as below
_(or any tool that can read `exif` data)_

````
exiftool logo.svg
````

In most cases, the licenses don't allow you to use the work for any
commercial purpose.

## List of files

* `logo.svg`: The official logo of `TheSLinux`. This logo is using the
  font `Black Chancery` by `Doug Miles`. The font can be used freely
  for commercial purpose and it can be downloaded from
  http://www.1001fonts.com/blackchancery-font.html .
  _(If you think this font may cause any problem with our license system,
  feel free to let us now and/or dicuss on `TheSLinux` lists.)_

* `tsl.svg`: A `short` version of our logo, that contains the main
  characters (`T`, `S`, `L`). The first version only contains `T` and `S`.
  We use the secondary color from the `scheme0`


## How to get bitmap version

There are many ways to get a bitmap version from the source `.svg`.
Because we are using `Inkscape` to edit the source file, you can use
the program's export function, or something like

````
inkscape -z -e output.png -w 1024 logo.svg
````

You only need to specify the width `-w 1024` because the height will be
calculated automatically. Replace `1024` with your input.
