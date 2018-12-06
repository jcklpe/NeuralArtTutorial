function neural_fusion() {
th neural_style.lua -save_iter 400 -image_size 512 -style_image library/$1.jpg -content_image library/$content.jpg -num_iterations 1200 -gpu 0 -output_image library/output/$content/$content-$1.png

};

content=mantis;
mkdir library/output/$content;

neural_fusion zebrasmoothie;
neural_fusion wolfhowl;
neural_fusion wood;
