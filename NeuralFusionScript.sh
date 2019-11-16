content=
function neural_fusion () {
echo th neural_style.lua -style_image library/style/$1.jpg -content_image library/content/$content.jpg -num_iterations 1200 -gpu 0 -output_image library/output/$content/$content-$1.png
}
neural_fusion stylez
neural_fusion styleoz
