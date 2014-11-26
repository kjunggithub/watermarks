# Watermarks
A shell script to add watermarks to images

## Dependencies
**Watermarks** requires `ImageMagick` and specifically `composite` to run.

## Instructions
1. clone the repo.

`git clone git@github.com:kjunggithub/watermarks.git && cd watermarks`

2. Replace `watermarks.png` with an transparent image to be used as the watermark on all images. Please keep the same file name.

3. Place all images that needs the watermarks to be applied onto into the `input` folder.

4. Run the shell script.

`sh add-watermark.sh`

5. Check `output` folder for joy!

## Parameters
An example of the `composite` being run in the shell script takes in several parameters.

Parameter | Details
--- | ---
Dissolve `value` | Dissolve the two images a given percent
Gravity `type` | Horizontal and vertical placement
Geometry `geometry` | Preferred size or location of the image

Check out [ImageMagick](http://www.imagemagick.org/script/composite.php) for more parameter options.