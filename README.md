# Ozymandias

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
`-i`: Specify the number of iteration; the default is `10`.

`-f`: Take a text file as input

`-t`: Take a string as input

If no input text is specified, the poem _Ozymandias_ by Percy Shelley is used.

## Example commands:
```bash
# Convert the text of Ozymandias 100 times
./the_decay_of_that_colossal_wreck -i 100

# Use a file as input
./the_decay_of_that_colossal_wreck -f path/to/filename.txt

# A string as input, iterating 5 times
./the_decay_of_that_colossal_wreck -t "Mouse Reeve" -i 5
```

## Example output:

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

The poem after 5 iterations:
```
Dummies, by Percy Shgllcy
1 Mn mm 1 from an arrqu land

wm m1 Two m and mmkless leg; afsfon
Smnd \n M desen near Menu, on Me Send
Halfmnk, 1| shattered V‘Sage xles, whose frown
m wr‘nkled up, m sneer amid command

Tell mm M sculpror wel \ Mo; pass] an; read
wn‘a yer gm '1 a, mmped on mgs‘ Hales; m‘ng;
Th hand Mm mocked Men and M m Mm fed

And 1| m pedeﬁal mgs‘ words appear
‘My mm ‘5 mymnd‘ﬂs, lung mam

Look 1| my works, ye M‘m, aha dnga‘
Nom‘ng Des‘d rema‘n; Round m dguy

of mm (o xossal wrezk, boundless and bare
Th Ion mlml Sandsm'am faraway
```
