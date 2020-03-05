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

/*
object {
    mortero
    translate<-3,20,-50>
    rotate<-3,-7.5,-50>
    scale<0.2,0.2,0.2>
}


object {
    star_final
    translate<-4,-2,3>
    scale 0.5
    rotate<0,0,0>
}
  

object {
    final_ying_no_empty
    translate<-3,5,2>
    scale 0.65
    rotate<0,0,0>
}
*/  

background {
  color rgb<0.75,0.75,0.1>
}