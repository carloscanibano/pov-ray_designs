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
	location <0,40,-20>
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
     	<3,6.5>, <-3,6.5>, <-6.5,0>, <-3, -6.5>, <3,-6.5>, <6.5,0>, <3,6.5>
    	pigment { Red}
}

#local hexagone_int = prism {
	0, // sweep the following shape from here ...
    	3, // ... up through here
    	7, // the number of points making up the shape ...
     	<3,6.5>, <-3,6.5>, <-7.85,0>, <-3, -6.5>, <3,-6.5>, <7.85,0>, <3,6.5>
      scale<0.5,0,0.5>
      translate<0,1,0>
    	pigment { Brown}
}

#local hexagone_base = prism {
	0, // sweep the following shape from here ...
    	3, // ... up through here
    	7, // the number of points making up the shape ...
     	<3,6.5>, <-3,6.5>, <-6.5,0>, <-3, -6.5>, <3,-6.5>, <6.5,0>, <3,6.5>
     	scale<0.77,0,0.77>
    	pigment { Yellow}
}

#local triangule_first =  prism {
    0, // sweep the following shape from here ...
    3.3, // ... up through here
    3, // the number of points making up the shape ...
   <0, -6.5> , <-6,6.5> , <6,6.5> 
   translate<0,0,-2>
    pigment { Black}
}

#local triangule_second =  prism {
    0, // sweep the following shape from here ...
    4, // ... up through here
    3, // the number of points making up the shape ...
   <0, -6.5> , <-6,6.5> , <6,6.5> 
   translate<0,0,-2>
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

//hexagone_out
//hexagone_int
hexagone_base
//triangule_first
//triangule_second
//star
//star_intersect_hexagone
star_with_hexagone

  #local hexagono_externo =  prism {
    0, // sweep the following shape from here ...
    4.8, // ... up through here
    7, // the number of points making up the shape ...
     <8,10>, <2,10>, <-0.8,5>, <2.1,-0.2>, <8.1, -0.2>, <10.8,5>, <8,10>
    pigment { Clear}
    texture{Glass3}
    scale<0.57,0,0.57>
    translate<1.6,0,1.66>
  }
  
    #local hexagono_vacio =  prism {
    0, // sweep the following shape from here ...
    4.82, // ... up through here
    7, // the number of points making up the shape ...
    <8,10>, <2,10>, <-0.8,5>, <2.1,-0.2>, <8.1, -0.2>, <10.8,5>, <8,10>
    pigment { Clear}
    texture{Glass3}
    scale<0.33,0,0.33>
    translate<2.85,0,2.9>
  }
  
      #local hexagono_abajo =  prism {
    0, // sweep the following shape from here ...
    3.3, // ... up through here
    7, // the number of points making up the shape ...
    <8,10>, <2,10>, <0,5>, <2,0>, <8, 0>, <10,5>, <8,10>
    pigment { Clear}
    texture{Glass3}
    scale<0.5,0,0.45>
    translate<2,0.5,2.25>
  }
  
  #local triangulo_1 =  prism {
    0, // sweep the following shape from here ...
    4.81, // ... up through here
    3, // the number of points making up the shape ...
   <0, 2.15> , <4,9> , <8,2.15> 
    pigment { Clear}
    texture{Glass3}
    scale<0.72,0,0.74>
    translate<1.62,0,1.25>
  }

  #local triangulo_2 =  prism {
    0, // sweep the following shape from here ...
    4.3, // ... up through here 
    3, // the number of points making up the shape ...
   <0,6.7>, <8,6.7>,<4,-0.2>
    pigment { Clear}
    texture{Glass3}
    scale<0.72,0,0.74>
    translate<1.62,0,1.25>
  }
  
#local estrella = merge{
	object{triangulo_1}
	object{triangulo_2}
	
	}
	
#local estrella_sin_pico = intersection {
	object{hexagono_externo}
	object{estrella}
	}
 
 #local estrella_con_hueco = difference {
 	object{estrella_sin_pico}
 	object{hexagono_vacio}
 	}
 	
#declare estrella_final = merge{
	object{estrella_con_hueco}
	object{hexagono_abajo}
	
	}



