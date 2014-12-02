# Watermarks
A shell script to resize and add watermarks to images.

## Dependencies
**Watermarks** requires `ImageMagick` and specifically, `composite` and `convert` to run.

## Instructions
1. clone the repo.

`git clone git@github.com:kjunggithub/watermarks.git && cd watermarks`

2. Replace `watermarks.png` with an transparent image (.png) to be used as the watermark.

3. Place all images that needs to be resized or watermarked into the `input` folder.

4. Run the shell script.

To resize an image run:

`sh watermarks.sh 300x400`

To resize an image and add the watermark:

`sh watermarks.sh 300x400 --watermark`

5. Check `output` folder for joy!

## Parameters
The `composite` tool in the script uses several parameters:

Parameter | Details
--- | ---
Dissolve `value` | Dissolve the two images a given percent
Gravity `type` | Horizontal and vertical placement
Geometry `geometry` | Preferred size or location of the image

Check out [ImageMagick](http://www.imagemagick.org/script/composite.php) for more parameter options.