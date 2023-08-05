include<case.scad>

//Changeable values
width = 100;
length = 100;
wall_height = 10;
x_offset = 0;
y_offset = 0;
z_offset = 1;
wall_thickness = 3;

//Non-changeable values
height = z_offset + wall_height;

case(width,
     length,
     wall_height,
     wall_thickness,
     x_offset,
     y_offset,
     z_offset);
