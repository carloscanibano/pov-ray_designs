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
	<-2.5,0,-0.3>,<2.5,2.1,2>
	pigment{Yellow}
}
//rectangule
#local circle_half =  difference {
	object{circle_entire}
	object{rectangule}
	}
//circle_half


#local circle_down= cylinder{ 
<-0.7,-0.5,0.4>,<-0.7,2.5,0.4>,1.15
pigment{Red}
}
//circle_down

#local ying_middle =  difference {
	object{circle_half}
	object{circle_down}
	}
ying_middle

#local circle_up_right= cylinder{ 
<1.09,0,-0.4>,<1.09,2,-0.4> 0.89
pigment{Red}
}

#local rectangule_1 = box {
	<-2.5,0,-0.3>,<2.5,2,2>
	translate<0,0,-2.3>
	pigment{Yellow}
}
//rectangule_1
//circle_up_right

#local circle_up_left= cylinder{ 
<-0.9,0,0>,<-0.9,2,0> 1.12
pigment{Red}
}

//circle_up_left
#local final_ying_part_left = difference {
	object{circle_up_left}
	object{circle_down}
	translate<-0,0,0>
}
	
final_ying_part_left

#local final_ying_part_right = difference {
	object{circle_up_right}
	object{rectangule translate<0,0,-2.3>}	
}

final_ying_part_right


#local base = cylinder{ 
<2,0,2>,<2,1,2>,2
pigment{Green}
pigment{Yellow}
}


#local circulo_arriba = cylinder{ 
<2,-0.1,3>,<2,1.1,3>,1
pigment{Black}
}


#local yin_falta_circulo_abajo = difference {
	object{base}
	object{circulo_arriba}
	box {<2,-0.1,0>,<5,1.1,4>}
	}



#local circulo_abajo = cylinder {
	<2,0,1>,<2,1,1>,1
	pigment{Green}
	}


#local yin_pre = merge{
	object{yin_falta_circulo_abajo}
	object{circulo_abajo}
	}



#local yin_exterior = object{
	yin_pre
	rotate<0,-90,0>
	translate<1,0,0>
	scale<1.2, 1, 1.1>
}



/* vaciar interior failed
difference {
	object {yin_exterior}
		object {yin_exterior scale<0.65, 1.05, 0.85> translate<0.8,-0.01,-0.4> rotate<0,-10,0>}
	}
*/
