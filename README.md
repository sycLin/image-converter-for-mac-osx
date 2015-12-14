# image-converter-for-mac-osx
this is a bash shell script which helps you convert your image files into the format you love.
> Please notice that:
> This script works on Mac OSX, but success is not guaranteed on any other operating systems.

## Effect
converting all target image files residing in the same directory into desired format.

## Usage
- `$./convert.sh`
  - will go with default settings: convert all *.bmp files into *.png files.
- `$./convert.sh <format>`
  - will traverse the directory where this script is and convert all image files with `<format>` format into *.png files.
- `$./convert.sh <format1> <format2>`
  - will convert all image files with `<format1>` format into `<format2>`.
