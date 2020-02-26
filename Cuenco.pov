#include "colors.inc"
#include "metals.inc"
#include "textures.inc"
                    
                    
/*FINAL
#local bol = merge {
                object{o1}
                object{o2}
                object{o3}
            }
#local bol = difference{
                object{bol}
                object{bol scale 0.97 translate<0,0.08,0>}
            }
*/

#local base_sphere = sphere{<0,-3,0>  5.3 pigment{Yellow} }
#local base_box = box{<-5.3,-7, -5.3>, <5.3,6, 5.3>  pigment{Black}}
//base_sphere
//cubo_base

#local base_bowl = difference{
     		object{base_sphere}
     		object{base_box}
     		
}
base_bowl

#local medium_sphere = sphere{<0,-5,0>  4.01pigment{Yellow} }
#local medium_box_up = box{<-5,-5.3,-5>, <5,0, 5>  pigment{Black}}
#local medium_box_down = box{<-4.5,-9.5,-4.5>, <4.5,-7, 4.5>  pigment{Black}}
//medium_sphere
//medium_box_down
//medium_box_up

#local medium_bowl  = difference{
	difference{
		object{medium_sphere}
		object{medium_box_down}
	}
	object{medium_box_up}
}
//medium_bowl
#local bowl_without_cone = merge{
	object{base_bowl}
	object{medium_bowl}
}
//bowl_without_cone
#local final_bowl = cone {<0,-5.3,0>,4.01, <0,-5,0>, 4.01 pigment{Yellow} } 
//final_bowl
#local bowl_with_cone = merge{
	object{base_bowl}
	object{medium_bowl}
	object{final_bowl}
}
//bowl_with_cone
#local bowl = difference{
                object{bowl_with_cone}
                object{bowl_with_cone scale 0.97}
}
bowl
background {color White}
camera {
	location <0,0,-20>
	look_at <0, 0, 0>
}
light_source{
<0,5, -5>
color rgb<1,1,1>
}