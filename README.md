# ozymandias

Causes text to decay by converting a text file to an image, then OCRing the image back to a text file. Only text files are saved.

## Setup for OSX:
``` bash
brew install tesseract
brew install imagemagick
```

The script takes an optional "iterations" flag that controls how many times it runs. Default is 10.

To use, just run
``` bash
./the_decay_of_that_colossal_wreck.sh
```

## Options:
`-i` specify the number of iteration, default `10`

`-f` specify the font used to create the image file, default `Georgia`. This lets you ensure that the font exists on your system, and experiment with how the results change depending on the font used. The difference between `Georgia` and `Webdings` is striking.
To see a list of available fonts, run:

``` bash
convert -list font
```

The script will take a while to run.
