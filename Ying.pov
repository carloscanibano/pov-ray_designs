#include"colors.inc"      
#include"textures.inc"
 
// Camara
camera {  
 location <0,8,0>
 look_at <0,0,0>
}
background {color White}
// Punto de luz
light_source{
 <2,10, 2> 
 color rgb <1,1,1>
}

#local circle_entire= cylinder{ 
<0,0,0>,<0,0.9,0>, 2.2
}
//circle_entire

#local rectangule = box {
	<-2.5,-0.3,0>,<2.5,2.1,2.5>
}
//rectangule
#local circle_half =  difference {
	object{circle_entire}
	object{rectangule}
	}
//circle_half


#local circle_down= cylinder{ 
<-0.7,-0.5,0.93>,<-0.7,1.9,0.93>, 1.35
}
//circle_down

#local ying_middle =  difference {
	object{circle_half}
	object{circle_down}
	}
//ying_middle

#local circle_up_right= cylinder{ 
<1.31,-0,-0.05>,<1.31,0.9,-0.05> 0.89
}

//rectangule_1
//circle_up_right

#local circle_up_left= cylinder{ 
<-0.83,0,0.2>,<-0.83,0.9,0.2> 1.38
}

#local circle_up_left_bigger= cylinder{ 
<0.1,-0.1,0.7>,<0.1,1,0.7> 2
}

//circle_up_left
//circle_up_left_bigger
#local final_ying_part_left = difference {
	object{circle_up_left}
	//object{circle_up_left_bigger}
	object{circle_down}
	object{rectangule translate<0,0,-2.51>}
}
	
//final_ying_part_left

#local final_ying_part_right = difference {
	object{circle_up_right}
	object{rectangule translate<0,0,-2.51>}	
}

//final_ying_part_right

#local final_ying_no_empty = union {
	object{ying_middle}
	object{final_ying_part_left translate<0,-0,-0>}
	object{final_ying_part_right}
} 

//final_ying_no_empty

#local ying_border_extern = object {final_ying_no_empty   scale<0.88, 1.2, 0.74> translate<0.05,-0.15,-0.32>  rotate -10*y  }

#local ying_empty = difference {
	object {final_ying_no_empty}
	object {ying_border_extern}
	pigment{Green}
}
//ying_border_extern
//ying_empty

#local ying_border_intern = object{ying_border_extern  scale<0.97, 1.2, 0.84> translate<-0.0,-0.15,-0.18>  rotate -3*y}
//ying_border_intern
#local  ying_border = difference {
	object{ying_border_extern}
	object{ying_border_intern}
	pigment{Grey}
}
//ying_border
#declare ying = merge {
	object{ying_empty}
	object{ying_border}
}

//ying






