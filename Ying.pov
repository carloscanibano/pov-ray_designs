#include"colors.inc"      
#include"textures.inc"
 
// Camara
camera {  
 location <0,7,0>
 look_at <0,0,0>
}
background {color White}
// Punto de luz
light_source{
 <2,10, 2> 
 color rgb <1,1,1>
}

#local circle_entire= cylinder{ 
<0,0,0>,<0,2,0>,2
pigment{Green}
}
//circle_entire

#local rectangule = box {
	<-2.5,-0.3,-0.3>,<2.5,2.1,2.1>
	pigment{Green}
}
//rectangule
#local circle_half =  difference {
	object{circle_entire}
	object{rectangule}
	}
//circle_half


#local circle_down= cylinder{ 
<-0.7,-0.5,0.4>,<-0.7,2.5,0.4>,1.21
pigment{Green}
}
//circle_down

#local ying_middle =  difference {
	object{circle_half}
	object{circle_down}
	}
//ying_middle

#local circle_up_right= cylinder{ 
<1.13,0,-0.38>,<1.13,2,-0.38> 0.85
pigment{Green}
}

//rectangule_1
//circle_up_right

#local circle_up_left= cylinder{ 
<-0.9,0,0>,<-0.9,2,0> 1.12
pigment{Green}
}

//circle_up_left
#local final_ying_part_left = difference {
	object{circle_up_left}
	object{circle_down}
	object{rectangule translate<0,0,-2.4>}
}
	
//final_ying_part_left

#local final_ying_part_right = difference {
	object{circle_up_right}
	object{rectangule translate<0,0,-2.4>}	
}

//final_ying_part_right

#declare final_ying_no_empty = merge {
	object{ying_middle}
	object{final_ying_part_left}
	object{final_ying_part_right}
} 

//final_ying_no_empty

#declare final_ying_empty = difference {
	object {final_ying_no_empty}
	object {final_ying_no_empty scale<0, 0, 0.7> pigment {Red}}
}
//final_ying_empty

#local ying_empty = 
	object{final_ying_no_empty  scale<0, 0, 0.7>}

//ying_empty


