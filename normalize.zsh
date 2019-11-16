#!/bin/bash
function normalize() {
# create sub-folder for output
mkdir -p normalized-images

# Begin for loop to cycle through images in queue folder
# the (.) forces it to use regular path so it won't effect sub directories
for picture in *(.);
do


# Normalize image sizes types and save in the new folder
if [[ $picture == *.jpg ]]; then
picture=${picture%.*};
convert $picture.jpg -resize "600>" ./normalized-images/$picture.png
echo "$picture.jpg->  $picture.png "

elif [[ $picture == *.jpeg ]]; then
picture=${picture%.*};
convert $picture.jpeg -resize "600>" ./normalized-images/$picture.png
echo "p$picture.jpeg->  $picture.png "

elif [[ $picture == *.gif ]]; then
picture=${picture%.*};
convert $picture.gif -resize "600>" ./normalized-images/$picture.png
echo "$picture.gif->  $picture.png "

elif [[ $picture == *.png ]]; then
picture=${picture%.*};
convert $picture.png -resize "600>" ./normalized-images/$picture.png
echo "$picture.png->  $picture.png "

else
echo "file ${picture} wasn't jpg, jpeg, gif, or png. either this is an error or you need to extend this script"

fi

done
}