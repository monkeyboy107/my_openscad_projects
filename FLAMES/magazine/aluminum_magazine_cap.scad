//Includes 
use <../base/cube_base.scad>
use <../base/cube_stacker_base.scad>

//Bottom
bottom_length = 24;
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

//opening
opening_length = bottom_length -2.5;
opening_depth = 3;
opening_height = wall_height + 1;
opening_translate = [1.5, bottom_depth -1, 0];

box(bottom_length, bottom_depth, bottom_height, 1);
difference(){
	stacker(wall_length, wall_depth, wall_height, wall_opening, wall_height, wall_thickness, wall_box_height, wall_slack);
	translate(opening_translate){
		box(opening_length, opening_depth, opening_height, 1);
	}
}
