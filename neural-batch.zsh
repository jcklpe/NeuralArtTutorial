#!/bin/bash
# function takes two directories as arguments. The first one is used for style images which are applied to content images. Both are batch so every style image will be applied to every content image in the folder
#(this means you can get a really really long running process so beware!)


function test-neural() {
local styleImages=$1;
local contentImage=$2;

for styleImage in *(.);
do
    for contentImage in *(.);
        do
        # get rid of extension
        styleImageLocation=${styleImage%.*};
        # get rid of directory section
        styleImageName=${styleImageLocation##*/};

        # get rid of extension
        contentImageLocation=${styleContent%.*};
        # get rid of directory section
        contentImageName=${contentImageLocation##*/};

        # make output folder
        mkdir -p output/$styleImageName

        th neural_style.lua
        -style_image ${styleImage} \
        -content_image ${contentImage} \
        -save_iter 400 \
        -image_size 512 \
        -num_iterations 1200 \
        -gpu 0 \
        -output_image output/${styleImageName}/${contentImageName}.png && \
        echo "${styleImageName} style applied to ${contentImageName}";

        done

done
}
