#include "colors.inc"
#include "shapes.inc"
#include "woods.inc"


#local cone_start = object{Round_Cone(<0, -3.5, 0>, 1, <0,-2.5,0>, 1, 0.6, 0)}
#local cilinder_end = cylinder {<0, -9.01, 0>, <0, -9, 0>, 1}
#local cilinder_start = cylinder {<0, -9, 0>, <0, -3, 0>, 1}
//#local cilinder_entire = merge {object{cilinder_start} object{cilinder_end}}
#local cilinder_cone_start = cylinder { <0, -4.05, 0>, <0, -3, 0>, 1.05}
#local cone_cilinder_merge_start = difference{object{cone_start texture{ pigment{wood turbulence 0.5 color_map {[0.1 rgb <0.045,0.005,0>] [0.4 rgb <0.055,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}} object{cilinder_cone_start texture{ pigment{wood turbulence 0.5 color_map {[0.1 rgb <0.035,0.005,0>] [0.4 rgb <0.038,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}}}
#local cilinder_cone_end = merge {object{cone_cilinder_merge_start} object{cilinder_start} object{cilinder_end texture{ pigment{wood turbulence 0.2 color_map {[0.1 rgb <0.045,0.005,0>] [0.4 rgb <0.055,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}} rotate <180,0,0> translate<0,-2.63,0>}
//#local cone_cilinder_merge_end = difference{object{cone_start} object{cilinder_start}  }
#local first_torus = torus{0.55, 0.55 translate <0,-1.9,0> texture{ pigment{wood turbulence 0.5 color_map {[0.1 rgb <0.045,0.005,0>] [0.4 rgb <0.055,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}}
#local second_torus = torus{0.55, 0.55 translate <0,-0.85,0> texture{ pigment{wood turbulence 0.5 color_map {[0.1 rgb <0.045,0.005,0>] [0.4 rgb <0.055,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}}
//cilinder_start
//cone_start (no)
//cone_cilinder_merge_start
//cilinder_cone_start (no)
//cilinder_cone_end
//first_torus
//second_torus
//cilinder_end
#declare mortero = merge {
    object{cilinder_start texture{ pigment{wood turbulence 0.5 color_map {[0.1 rgb <0.045,0.005,0>] [0.4 rgb <0.055,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}}
    object{cone_cilinder_merge_start}
    object{cilinder_cone_end texture{ pigment{wood turbulence 0.5 color_map {[0.1 rgb <0.020,0.005,0>] [0.4 rgb <0.025,0.006,0>]}} finish{diffuse 0.5 phong 0.01 phong_size 2}}}
    object{first_torus}
    object{second_torus}
} 

//mortero
camera {
	location <0,0,-20>
	look_at <0, 0, 0>
}

background {color White}
light_source{
<0,5, -5>
color rgb<1,1,1>
}