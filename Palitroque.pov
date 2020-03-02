#include "colors.inc"
#include "shapes.inc"

#local cone_start = object{Round_Cone(<0, -3.5, 0>, 1, <0,-2.5,0>, 1, 0.6, 0)  pigment{Yellow}}
#local cilinder_start = cylinder {<0, -9, 0>, <0, -3, 0>, 1  pigment{Brown}}
#local cilinder_cone_start = cylinder { <0, -4.05, 0>, <0, -3, 0>, 1.05  pigment{Black}}
#local cone_cilinder_merge_start = difference{object{cone_start} object{cilinder_cone_start }}
#local cilinder_cone_end = merge {object{cone_cilinder_merge_start} object{cilinder_start} rotate <180,0,0> translate<0,-2.63,0>}
#local cone_cilinder_merge_end = difference{object{cone_start} object{cilinder_start}  }
#local first_torus = torus{0.55, 0.55 pigment{Red} translate <0,-1.9,0>}
#local second_torus = torus{0.55, 0.55 pigment{Red} translate <0,-0.85,0>}
//cilinder_start
//cone_start (no)
//cone_cilinder_merge_start
//cilinder_cone_start (no)
//cilinder_cone_end
//first_torus
//second_torus

#declare mortero = merge {
    object{cilinder_start}
    object{cone_cilinder_merge_start}
    object{cilinder_cone_end}
    object{first_torus}
    object{second_torus}
}

camera {
	location <0,0,-20>
	look_at <0, 0, 0>
}

background {color White}
light_source{
<0,5, -5>
color rgb<1,1,1>
}