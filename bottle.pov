#include "colors.inc"    
#include "textures.inc"  
#include "shapes.inc"
                         
camera {
  location <10, 5, -20>
  look_at <-3, 8, 0>
}

light_source {
  <-20, 10, -20>
  color rgb <1, 1, 1>
}


/*
cone {
  <-3, 0, 0>, 5 , <-3, 10, 0>, 2
  texture {
    NBbeerbottle
  }
}

cylinder {
  <-3, 10, 0>, <-3, 15, 0>, 2
  texture {
    NBbeerbottle
  }
} 
*/

/*
union {
  cone { <-3, 0, 0>, 5 , <-3, 10, 0>, 1.5 }
  cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.5 } 
  cone { <-3, 13, 0>, 1.5, <-3, 16, 0>, 2.5 }
  texture { NBbeerbottle }
  hollow
}
*/

/*
union {
  cone { <-3, 0, 0>, 5 , <-3, 10, 0>, 1.5 }
  cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.5 } 
  cone { <-3, 13, 0>, 1.5, <-3, 16, 0>, 2.5 }
  color White
}
*/

#declare glas_green_tx=
texture
{
  pigment
  {
    color rgbt<0.1,0.6,0.5,0.9>
  }
  finish
  {
    specular 0.2
    phong_size 200
    phong 0.3
    reflection 0.3
  }
}

#local bottle = union {
    cone { <-3, 0, 0>, 5 , <-3, 10, 0>, 1.5 open }
    cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.5 open } 
    cone { <-3, 13, 0>, 1.5, <-3, 16, 0>, 2.5 open }
    texture { Glass }
}

#local empty_bottle = union {
    cone { <-3, 0, 0>, 4.8 , <-3, 10, 0>, 1.3 }
    cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.3 open } 
    cone { <-3, 13, 0>, 1.3, <-3, 16, 0>, 2.3 open } 
    texture { Glass }
}

#local round_bottle = merge {   
    Round_Cone ( 
      <-3, 0, 0>, 5,
      <-3, 10, 0>, 1.5,
      0.20, 
      1)
    cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.5 } 
    cone { <-3, 13, 0>, 1.5, <-3, 16, 0>, 2.5 open } 
    texture { Glass }
}

#local empty_round_bottle = merge {   
    Round_Cone ( 
      <-3, 0, 0>, 4.8,
      <-3, 10, 0>, 1.3,
      0.18, 
      1)
    cylinder { <-3, 10, 0>, <-3, 13, 0>, 1.3 open } 
    cone { <-3, 13, 0>, 1.3, <-3, 16, 0>, 2.3 open } 
    texture { Glass }
}


difference { 
  object { round_bottle }
  object { empty_round_bottle }  
}

// A simple water glass made with a difference:
#local water_glass = difference
{ cone { <0,0,0>,1,<0,5,0>,1.2 }
  cone { <0,.1,0>,.9,<0,5.1,0>,1.1 }
  texture { Glass }
}


/*
sor {
  6,
  <0,  5>,
  <0,  3>,
  <0,  2>,
  <0,  2>,
  <0,  3>,
  <0,  4>
  open
  texture { NBbeerbottle }
}
*/

background {
 color White
}