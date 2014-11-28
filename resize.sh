#!/bin/bash

dimensions=$1
# loop over jpg, jpeg, and png files in the input folder
for image in input/*.{[jJ][pP][gG],[jJ][pP][eG][gG],[pP][nN][gG]}; do


	# get image name without the input prefix
	name="${image#"input/"}"

	# get the filename without the extension
	filename="${name%.*}"

	# get the extension
	extension="${name##*.}"

	# resize/crop
	convert "${image}" -resize "${dimensions}^" -gravity center -crop "${dimensions}"+0+0 +repage "output/${filename}-watermarked.${extension}"

	if [[ $2 == "--watermark" ]]; then
		# # add watermark to each image
		composite -dissolve 100% -gravity southeast -geometry +15+15 watermark.png "output/${filename}-watermarked.${extension}" "output/${filename}-resized.${extension}"

		rm "output/${filename}-watermarked.${extension}"

	fi
done
