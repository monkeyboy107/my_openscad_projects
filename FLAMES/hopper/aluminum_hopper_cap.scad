//Includes 
use <../base/cube_base.scad>
use <../base/cube_hopper_base.scad>

//Bottom
bottom_length = 23;
bottom_depth = 49.5;
bottom_height = .5;

//Walls
wall_length = bottom_length;
wall_depth = bottom_depth;
wall_height = 10;
//wall_height = 5;
wall_opening = 1;
wall_thickness = .5;
wall_box_height = 1;
wall_slack = 1;

//Opening
opening_length = bottom_length -2.5;
opening_depth = 3;
opening_height = wall_height + 1;
opening_translate = [1.5, bottom_depth -1, 0];

//Rails
rail_thickness = 1.5;
rail_dimentions = [
rail_thickness,
bottom_depth,
0
];
rail_offset_1 = [
0,
0,
wall_height -1
];
rail_offset_2 = [
wall_length -1,
0,
wall_height -1
];

box(bottom_length, bottom_depth, bottom_height, 1);
difference(){
	hopper(wall_length, wall_depth, wall_height, wall_opening, 0, 0, 0, wall_height, wall_thickness, wall_box_height, wall_slack);
	translate(opening_translate){
		box(opening_length, opening_depth, opening_height, 1);
	}
}
translate(rail_offset_1){
	box(rail_dimentions[0], rail_dimentions[1], rail_dimentions[2], 1);
}
translate(rail_offset_2){
	box(rail_dimentions[0], rail_dimentions[1], rail_dimentions[2], 1);
}
