#!/bin/bash

max=10

while getopts ":i:" opt; do
    case $opt in
      i)
          max=$OPTARG
          ;;
      \?)
        echo "Invalid option: -$OPTARG" >&2
        exit 1
        ;;
      :)
        echo "Option -$OPTARG requires an argument." >&2
        exit 1
        ;;
    esac
done

filename=ozymandias
# initialize the poem
echo "Ozymandias, by Percy Shelley

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
The lone and level sands stretch far away." > $filename-1.txt

for i in `seq 1 $max`; do
    echo "--- Iteration $i ---"
    font=$( convert -list font | grep Font: | cut -d' ' -f 4 | grep ^[^W] | awk 'BEGIN{srand();}{print rand()"\t"$0}' | sort -k1 -n | cut -f2- | head -1 )
    convert -size 500x500 xc:white -font "$font" -pointsize 14 -fill black -annotate +15+15 "@$filename-$i.txt" -trim -bordercolor "#FFF" -border 10 +repage $filename-$i.png
    tesseract $filename-$i.png $filename-`expr $i + 1`
    rm $filename-$i.png
done
