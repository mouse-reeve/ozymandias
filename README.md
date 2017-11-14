# ozymandias

Causes text to decay by converting a text file to an image, then OCRing the image back to a text file. Only text files are saved.

Setup for OSX:
``` bash
brew install tesseract
brew install imagemagick
```

The script takes an optional "iterations" flag that controls how many times it runs. Default is 10.

Example:
``` bash
./the_decay_of_that_colossal_wreck.sh -i 1000
```

It may take a while to run.
