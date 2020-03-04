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

location<-2,4,-15> look_at<0,0,0> // Main     y=4, z=-15
rotate<0,0,2>

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

#local radio_mesa = 12;

// Mesa
cylinder {
    <-2,-1,0>, <-2,0,0>, radio_mesa  
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
    rotate<0,40,0>
    translate<0,0,-7.2>
}

// Pared
//plane{z, radio_mesa + 1.5 pigment{color rgb<1,1,0.5>}}

object {
    botella
	translate<0, 0.6, -37>
	scale<0.2,0.2,0.2>
}

object {
    cuenco
    translate<3.2,9,-16>
    scale 0.48
    texture { 
        Bright_Bronze
        finish {diffuse 0.1}
    }
}

object {
    mortero
    translate<-3,20,-50>
    rotate<-3,-7.5,-50>
    scale<0.2,0.2,0.2>
    texture { Cherry_Wood }
}

object {
    star_final
    translate<-12,0,-2>
    scale<0.5,0.5,0.5>
    rotate<0,-43,0>
}    

object {
    final_ying_no_empty
    translate<-7.5,10,0>
    scale<0.6,0.6,0.6>
    rotate<-80,-12,-10>
}

background {
  color rgb<0.75,0.75,0.1>
}