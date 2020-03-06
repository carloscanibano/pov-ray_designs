#include "bottle.pov"
#include "Cuenco.pov"
#include "Estrella.pov"
#include "Palitroque.pov"
#include "Ying.pov"
#include "woods.inc"
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

camera {

location<0,2.2,-6> look_at<0,0.75,0> // Main     y=2.2, z=-6
//location<-0,10.2,0> look_at<0,0.75,0> // Above
rotate<0,0,0>

//location<0,10,0> look_at<0,0,0> // Submain

//location<0,15,-30> look_at<0,0,0> // Far
//location<2,4,-6> look_at<2,0,2> // Aux
}

// Puntos de luz
light_source{// TODO otro tipo, pero posicion buena
    <-1,10,-2>
    color rgb<1,1,1>
}

/*
light_source{
    <0,2,-8>
    color rgb<1,1,1>
} 
*/

//sphere{<0,2.3,-8> 0.08 pigment{White}}

#local radio_mesa = 13;

// Mesa
cylinder {
    <-2,-0.38,0>, <-2,-2,0>, radio_mesa  
    /*
    texture{
        pigment{P_WoodGrain15B scale 0.2}
        finish {
            diffuse 0.9
            specular 0.1
            reflection {0.03}
        }
    }
    */
    texture { DMFWood3 }
    rotate<0,35,0>
    translate<2,-2,-7.2>
}

// Pared
//plane{z, radio_mesa + 1.5 pigment{color rgb<1,1,0.5>}}

object {
    botella_final
	translate<5.5, -14.75, 13.5>
	scale<0.16,0.16,0.16>
	//texture { Glass3 }
}

object {
    cuenco
    translate<5.9,2.5,5.5>
    scale 0.35
}


object {
    mortero
    translate<11,6,16>
    rotate<-0,13,-48>
    scale <0.19,0.15,0.15>
}


object {
    star
    translate<2.1,-7.7,12.2>
    scale 0.3
    rotate<0,-35,0>
}

object {
    ying
    translate<-2.74,-5.3,-2.7>
    scale 0.42
    rotate<-80,-12,0>
}  

background {
  color rgb<0.75,0.75,0.1>
}