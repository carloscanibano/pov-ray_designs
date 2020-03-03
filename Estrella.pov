#include"colors.inc"      
#include"textures.inc"

/*
// Camara
camera { 
	// page 5 vision 
	 location <8,10,-5>
	 look_at <4,3,5>
	//page 6 vision front
	location <4,14,4>
	look_at <4,0,4>
	
	//page 6 vision vertical
	//location <-6,4,-1>
	//look_at <3,3,5>
}
// Punto de luz
light_source{
 <5,5, -5> 
 color rgb <1,1,1>
}
*/

camera {
	location <0,12,-10>
	look_at <0, 0, 0>
}

background {color White}
light_source{
<0,5, -5>
color rgb<1,1,1>
}

#local hexagone_out = prism {
	0, // sweep the following shape from here ...
    	8, // ... up through here
    	7, // the number of points making up the shape ...
     	<2.67,4.46>, <-2.67,4.46>, <-5.04,0>, <-2.64, -4.47>, <2.64,-4.47>, <5.04,0>, <2.67,4.46>
     	scale<0.83,0,0.87>
    	pigment { Red}
}

#local hexagone_int = prism {
	0, // sweep the following shape from here ...
    	8, // ... up through here
    	7, // the number of points making up the shape ...
     	<2.67,4.46>, <-2.67,4.46>, <-5.04,0>, <-2.64, -4.47>, <2.64,-4.47>, <5.04,0>, <2.67,4.46>
      scale<0.49,0,0.49>
    	pigment { Brown}
}

#local hexagone_base = prism {
	0, // sweep the following shape from here ...
    	3.5, // ... up through here
    	7, // the number of points making up the shape ...
      <2.67,4.46>, <-2.67,4.46>, <-5.04,0>, <-2.64, -4.47>, <2.64,-4.47>, <5.04,0>, <2.67,4.46>
     	scale<0.63,0,0.63>
     	translate<0,1,0>
    	pigment { Yellow}
}

#local triangule_lower =  prism {
    0, // sweep the following shape from here ...
    5.5, // ... up through here
    3, // this number of points making up the shape ...
   <0, -2.05> , <-3.64,4.75> , <3.64,4.75> 
   translate<0,0,-2.56>
    pigment { Black}
}

#local triangule_higher =  prism {
    0, // sweep the following shape from here ...
    6, // ... up through here
    3, // the number of points making up the shape ...
   <0, -2.05> , <-3.64,4.75> , <3.64,4.75> 
   translate<0,0,-2.56>
   rotate <180,0,180>
   pigment { Green}
}

#local star = merge{
	object{triangule_higher}
	object{triangule_lower}
}

#local star_intersect_hexagone = intersection {
	object{hexagone_out}
	object{star}
}

#local star_with_hexagone = difference {
 	object{star_intersect_hexagone}
 	object{hexagone_int translate<0,-0.2,0>}
 }
 
#local hexagone_base_empty = difference {
	object{hexagone_base}
	object{hexagone_int scale 1.01 translate<0,1.05,0>}
}
	
#declare star_final = merge{
	object{star_with_hexagone}
	object{hexagone_base_empty}
	}
//hexagone_out
//hexagone_int
//hexagone_base
//triangule_lower
//triangule_higher
//hexagone_base_empty
//star
//star_intersect_hexagone
//star_with_hexagone
//star_final

