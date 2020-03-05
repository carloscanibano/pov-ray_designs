#include "colors.inc"    
#include "textures.inc"  
#include "shapes.inc"

/*                       
camera {
  location <10, 10, -15>
  look_at <-3, 6, 0>
}

light_source {
  <-20, 10, -20>
  color rgb <1, 1, 1>
}
*/


#local bottle_base = object {
    Round_Cone ( 
      <-3, 0, 0>, 5,
      <-3, 9.5, 0>, 1.29,
      0.20, 
      1)
    texture { Glass3 }
}

#local union_cylinder = object {
    cylinder { <-3, 9.4, 0>, <-3, 12, 0>, 1.3 }  
    pigment{White filter 0.99}
	texture{Glass3}
	finish { reflection {0.1} ambient 0.8 diffuse 0.7 }
}

#local top_cone = object {                         
   cone { <-3, 12, 0>, 1.3, <-3, 15, 0>, 2.5 open}
   texture { Glass3 }
}

#local final_bottle = merge {
    object {bottle_base}
    object {union_cylinder}
    object {top_cone}
}

#local round_bottle = merge {   
    Round_Cone ( 
      <-3, 0, 0>, 1.5,
      <-3, 10, 0>, 0.05,
      0.2, 
      0.8)
    cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.5 } 
    cone { <-3, 13, 0>, 1.5, <-3, 16, 0>, 2.5 open } 
}


#declare botella_final = difference { 
    object { final_bottle }
	object{top_cone scale <0.98, 1, 0.95> translate <-0.08,0,0.>}
	object{union_cylinder scale <0.95, 1, 0.97> translate <-0.15,0,0>}
	object{bottle_base scale<0.96,0.99,0.99> translate <-0.1,0.1,0>} 
} 

/*
object {
    //botella 
    botella_final
    //scale 2 
    texture {NBglass}
} 

background {
    color Black
}
*/