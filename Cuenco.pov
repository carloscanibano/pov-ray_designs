
#include "colors.inc"
#include "metals.inc"
#include "textures.inc"
                    
/*                   
#local bol = merge {
                object{o1}
                object{o2}
                object{o3}
            }
#declare cuenco = difference{
                object{bol}
                object{bol scale 0.97 translate<0,0.08,0>}
            }

*/
#local base_sphere = sphere{<0,-4.5,0>  4.5 texture { Copper_Metal }}
#local base_box = box{<-5,-8.7, -5>, <5,3, 5> texture { Copper_Metal }}
//base_sphere
//base_box

#local base_bowl = difference{
     		object{base_sphere}
     		object{base_box translate<0,0,0>}
     		texture { Copper_Metal }
}
//base_bowl

#local medium_sphere = sphere{<0,-6.06,0>  3.1 texture { Copper_Metal } }
#local medium_box_up = box{<-5,-7,-5>, <5,0, 5>  texture { Copper_Metal } }
#local medium_box_down = box{<-4.5,-10,-4.5>, <4.5,-8.7, 4.5>  texture { Copper_Metal } }
//medium_sphere
//medium_box_down
//medium_box_up

#local medium_bowl  = difference{
	object{medium_sphere}
	object{medium_box_down}
	object{medium_box_up}
	texture { Copper_Metal }
}
//medium_bowl
#local bowl_without_cone = merge{
	object{base_bowl}
	object{medium_bowl}
	texture { Copper_Metal }
}
//bowl_without_cone
#local final_bowl = cone {<0,-7,0>,2.95, <0,-6.15,0>, 2.95 texture { Copper_Metal } } 
//final_bowl
#local bowl_with_cone = merge{
	object{base_bowl}
	object{medium_bowl}
	object{final_bowl}
	texture { Copper_Metal }
}
//bowl_with_cone
#declare cuenco = difference{
                object{bowl_with_cone}
                object{bowl_with_cone scale 0.98 translate<0,0.72,0>}
                texture { Copper_Metal }
}
cuenco

background {color White}
camera {
	location <-0,4,-18>
	look_at <0, 0, 0>
}
light_source{
<0,5, -5>
color rgb<1,1,1>
}
