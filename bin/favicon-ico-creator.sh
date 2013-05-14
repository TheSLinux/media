#!/bin/bash

# Purpose: Generate a multiple-resoltuion `favicon.ico`
#          from the vector version of TheSLinux's logo (tsl.svg)
# Author : Anh K. Huynh
# Date   : 2013 May 14th
# License: GPL v2
# Ref.   : https://gist.github.com/pfig/1808188

# The contents of the original script https://gist.github.com/pfig/1808188
#
# convert source-WxW.png -resize 256x256 -transparent white favicon-256.png
# convert favicon-256.png -resize 16x16 favicon-16.png
# convert favicon-256.png -resize 32x32 favicon-32.png
# convert favicon-256.png -resize 64x64 favicon-64.png
# convert favicon-256.png -resize 128x128 favicon-128.png
# convert favicon-16.png favicon-32.png favicon-64.png \
#   favicon-128.png favicon-256.png -colors 256 favicon.ico
#

_I_SOURCE="${0%/*}/../tsl.svg"
for _size in 16 32 64 128 256; do
  (( _res = 5 * _size ))
  (( _res = _res / 2 ))

  inkscape -z \
    -d $_res \
    -e tmp-tsl-$_size.png \
    -a 0:5:36:43 \
    tsl.svg
done

convert tmp-tsl-{16,32,64,128,256}.png -colors 256 favicon.ico
rm -f tmp-tsl-{16,32,64,128,256}.png
