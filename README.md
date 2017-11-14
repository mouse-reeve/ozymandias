# ozymandias

Causes text to decay by converting a text file to an image, then OCRing the image back to a text file. Only text files are saved.

## Setup for OSX:
``` bash
brew install tesseract
brew install imagemagick
```

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


## Example output

The original poem:

```
Ozymandias, by Percy Shelley

I met a traveller from an antique land
Who said: Two vast and trunkless legs of stone
Stand in the desert... near them, on the sand,
Half sunk, a shattered visage lies, whose frown,
And wrinkled lip, and sneer of cold command,
Tell that its sculptor well those passions read
Which yet survive, stamped on these lifeless things,
The hand that mocked them and the heart that fed:

And on the pedestal these words appear:
'My name is Ozymandias, king of kings:
Look on my works, ye Mighty, and despair!'
Nothing beside remains. Round the decay
Of that colossal wreck, boundless and bare
The lone and level sands stretch far away.
```

The poem after 10 iterations in ComicSans:
```
Oxymnndms, b, Pm Shelley
m27 a 7mvx| m from an aquux land
Who smd: Two v057 and wunklxss legs of smug

Smnd m m dxsxm near M, on me sand,

Half sunk, asmmmd wsagx Ives, whusx frown,
And wrmklxd hp, and sneer of mld Lammnnd.

Tell M m swlmnr well M passm read

WM y27 survwx, smmpxd on mesa Ixxss M4]:
The hand Mankxd Maud M2 mm mm f2

And on me pxdxsml mesa words appear
‘My name vs Oxymnndms, kmq of km
Look on my works, ye uny, and despaw“

m9 bxsvdx rxmmM, Round m2 dxmy
```
