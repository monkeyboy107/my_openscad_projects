//Includes
use <../box_module/box_module.scad>

//Dimentions
//General Dimentions
x = 10;
y = 18.17;
z = 0;
thickness = 1;

//Back dimentions
back_x = x;
back_y = 5;
back_z = 116.71;
back_thickness = thickness;

//Bottom dimentions
bottom_x = x;
bottom_y = y;
bottom_z = 2;
bottom_thickness = thickness;

//Front dimentions
front_x = x;
front_y = 1;
front_z = 9;
front_thickness = thickness;
front_translate = [0, y, 0];

cube([back_x, back_y, back_z]);
cube([bottom_x, bottom_y, bottom_z]);
translate(front_translate){
	cube([front_x, front_y, front_z]);
}
