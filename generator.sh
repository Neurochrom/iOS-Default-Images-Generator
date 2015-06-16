#!/bin/bash

# Usage
# -------------------------------------------
usage() { echo "usage: $0 icon_src_image start_src_image [out_dir]"; exit 1; }
[ "$1" ] && [ "$2" ] || usage
[ "$3" ] || set "$1" "$2" "./out"


# Directories
# -------------------------------------------
ICONDIR=$3/icon
SCREENDIR=$3/screen
eval mkdir -p "$ICONDIR"
eval mkdir -p "$SCREENDIR"


# Show progress
# -------------------------------------------
set -x


# App Icons
# -------------------------------------------
c="sips"

# iPhone iOS 5/6
$c "$1" --resampleHeightWidth 57 57   --out "$ICONDIR/Icon.png"
$c "$1" --resampleHeightWidth 114 114 --out "$ICONDIR/Icon@2x.png"
# iPad iOS 5/6
$c "$1" --resampleHeightWidth 72 72   --out "$ICONDIR/Icon-72.png"
$c "$1" --resampleHeightWidth 144 144 --out "$ICONDIR/Icon-72@2x.png"
# iPhone iOS7
$c "$1" --resampleHeightWidth 60 60   --out "$ICONDIR/Icon-60.png"
$c "$1" --resampleHeightWidth 120 120 --out "$ICONDIR/Icon-60@2x.png"
# iPad iOS7
$c "$1" --resampleHeightWidth 76 76   --out "$ICONDIR/Icon-76.png"
$c "$1" --resampleHeightWidth 152 152 --out "$ICONDIR/Icon-76@2x.png"
# Setting
$c "$1" --resampleHeightWidth 29 29   --out "$ICONDIR/Icon-Small.png"
$c "$1" --resampleHeightWidth 58 58   --out "$ICONDIR/Icon-Small@2x.png"
# Spotlight
$c "$1" --resampleHeightWidth 40 40   --out "$ICONDIR/Icon-Small-40.png"
$c "$1" --resampleHeightWidth 80 80   --out "$ICONDIR/Icon-Small-40@2x.png"
$c "$1" --resampleHeightWidth 50 50   --out "$ICONDIR/Icon-Small-50.png"
$c "$1" --resampleHeightWidth 100 100 --out "$ICONDIR/Icon-Small-50@2x.png"

# AppStore
$c "$1" --resampleHeightWidth 512 512   --out "$ICONDIR/iTunesArtwork.png"
$c "$1" --resampleHeightWidth 1024 1024 --out "$ICONDIR/iTunesArtwork@2x.png"


# App Launch Images
# -------------------------------------------
c="sips"

# iPhone
$c "$2" --resampleHeight 480  -c 480 320   --out "$SCREENDIR/Default~iphone.png"
$c "$2" --resampleHeight 960  -c 960 640   --out "$SCREENDIR/Default@2x~iphone.png"
$c "$2" --resampleWidth 640 -c 1136 640  --out "$SCREENDIR/Default-568h@2x~iphone.png"
# iPad
$c "$2" --resampleHeight 1024 -c 1024 768  --out "$SCREENDIR/Default-Portrait~ipad.png"
$c "$2" --resampleHeight 2048 -c 2048 1536 --out "$SCREENDIR/Default-Portrait@2x~ipad.png"
$c "$2" --resampleWidth 768   -c 1024 768  --out "$SCREENDIR/Default-Landscape~ipad.png"
$c "$2" --resampleWidth 2048  -c 1536 2048 --out "$SCREENDIR/Default-Landscape@2x~ipad.png"
