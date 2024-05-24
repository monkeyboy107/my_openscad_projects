//Includes 
use <../base/cube_base.scad>

//Model information
model_length = 10;
model_depth = 10;
model_height = 10;
model_offset = 0;
box_height = 1;
model_opening = 0;
model_slack = 10;
stacker_height = 100;
stacker_wall_thickness = 10;

/*
translate([model_offset, model_offset, 0]){
	box(model_length, model_depth, model_height, 1);
}
*/

module stacker(model_length, model_depth, model_height, model_opening, stacker_height, stacker_wall_thickness, box_height, model_slack){
	//Calculated
	wall_length_calc = model_length * model_slack;
	model_depth_calc = model_depth * model_slack;
	model_height_calc = model_height * model_slack;

	//Wall 
	wall_length = [wall_length_calc, stacker_wall_thickness, wall_length_calc, stacker_wall_thickness];
	wall_depth = [stacker_wall_thickness, model_depth_calc, stacker_wall_thickness, model_depth_calc];
	wall_height = [stacker_height, stacker_height, stacker_height -model_opening, stacker_height];
	wall_box_height = [box_height, box_height, box_height, box_height];
	wall_offset = [
	[0, 0, 0],
	[0, 0, 0],
	[0, model_depth_calc - stacker_wall_thickness, model_opening],
	[wall_length_calc, 0, 0]
	];

	wall = [
	wall_length,
	wall_depth,
	wall_height,
	wall_box_height,
	wall_offset
	];

	for(segment = [0:3]){
		translate(wall[4][segment]){
			box(wall[0][segment], wall[1][segment], wall[2][segment], wall[3][segment]);
		}
	}
}
stacker(model_length, model_depth, model_height, model_opening, stacker_height, stacker_wall_thickness, box_height, model_slack);
