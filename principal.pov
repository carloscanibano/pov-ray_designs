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

location<-0,1,-5.5> look_at<0,0.75,0> // Main     y=1, z=-5.5
//location<-6,-2,-4> look_at<0,0.75,0> // see  bowl up 
//location<-0,10,0> look_at<0,0.75,0> // Above
rotate<0,0,0>

//location<0,10,0> look_at<0,0,0> // Submain

//location<0,15,-30> look_at<0,0,0> // Far
//location<2,4,-6> look_at<2,0,2> // Aux
}

// Puntos de luz
light_source{
    <-15,10,0>
    color rgb<0.5,0.5,0.5>
}

/*
light_source{
    <0,2,-8>
    color rgb<1,1,1>
} 
*/

//sphere{<0,2.3,-8> 0.08 pigment{White}}

// Mesa
cylinder {
    <-2,-0.38,0>, <-2,-2,0>, 13  
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
    texture{ pigment{wood turbulence 0.8 color_map {[0.1 rgb <0.09,0.01,0>] [0.4 rgb <0.093,0.015,0>]}} finish{diffuse 0.7 brilliance 0.05 reflection 0.05}}
    rotate<0,35,0>
    translate<2,-2,-7.2>
}

// Pared
//plane{z, radio_mesa + 1.5 pigment{color rgb<1,1,0.5>}}
union {
    object {
        botella_final
    	translate<5.5, -14.75, 13.5>
    	scale<0.16,0.16,0.16>
    	//texture { Glass3 }
    }
    
    object {
        cuenco
        translate<5.9,2.2,5.5>
        scale 0.35
    }
    
    
    object {
        mortero
        translate<12.3,1.45,15.5>
        rotate<-20,13,-53>
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
    
    translate<-0.1,0,1>
}  

background {
  color rgb<0.75,0.75,0.1>
}