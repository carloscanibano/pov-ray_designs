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
	location <-0,6,-10>
	look_at <0, 0, 0>
}

background {color White}
light_source{
<0,5, -5>
color rgb<1,1,1>
}

#local hexagone_out = prism {
	0, // sweep the following shape from here ...
    	3.9, // ... up through here
    	7, // the number of points making up the shape ...
     	 <2.61,4.51>, <-2.61,4.51>, <-5,0>, <-2.66, -4.51>, <2.61,-4.51>, <5,0>, <2.61,4.51>
     	scale<0.84,0,0.87>
    	pigment { Red}
}

#local hexagone_int = prism {
	0, // sweep the following shape from here ...
    	3, // ... up through here
    	7, // the number of points making up the shape ...
     	<2.67,4.46>, <-2.67,4.46>, <-5.04,0>, <-2.64, -4.47>, <2.64,-4.47>, <5.04,0>, <2.67,4.46>
      scale<0.49,0,0.49>
      translate<0,1,0>
    	pigment { Brown}
}

#local hexagone_base = prism {
	0, // sweep the following shape from here ...
    	2, // ... up through here
    	7, // the number of points making up the shape ...
      <2.61,4.51>, <-2.61,4.51>, <-5,0>, <-2.61, -4.51>, <2.61,-4.51>, <5,0>, <2.61,4.51>
     	scale<0.69,0,0.69>
     	translate<0,1,0>
    	pigment { Yellow}
}

#local triangule_first =  prism {
    0, // sweep the following shape from here ...
    3.7, // ... up through here
    3, // this number of points making up the shape ...
   <0, -2.05> , <-3.64,4.75> , <3.64,4.75> 
   translate<0,0,-2.56>
    pigment { Black}
}

#local triangule_second =  prism {
    0, // sweep the following shape from here ...
    4, // ... up through here
    3, // the number of points making up the shape ...
   <0, -2.05> , <-3.64,4.75> , <3.64,4.75> 
   translate<0,0,-2.56>
   rotate <180,0,180>
   pigment { Green}
}

#local star = merge{
	object{triangule_first}
	object{triangule_second}
}

#local star_intersect_hexagone = intersection {
	object{hexagone_out}
	object{star}
}

#local star_with_hexagone = difference {
 	object{star_intersect_hexagone}
 	object{hexagone_int}
 }
 
#declare star_final = merge{
	object{star_with_hexagone}
	object{hexagone_base}
	
	}
//hexagone_out
//hexagone_int
//hexagone_base
//triangule_first
//triangule_second
//star
//star_intersect_hexagone
//star_with_hexagone
star_final
  


