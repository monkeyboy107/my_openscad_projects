//Includes 
use <../base/cube_base.scad>
use <../base/cube_hopper_base.scad>

//Model information
model_length = 15;
model_depth = 35;
model_height = 4;
model_offset = 3;
model_opening = model_height * 1.3;
box_height = 1;
model_slack = 1.3;
number_of_models = 1;
rail_depth = .5;
rail_height = 7.5;
rail_thickness = .5;
stacker_height = model_height * number_of_models;
stacker_wall_thickness = 1;

/*
translate([model_offset, model_offset, 0]){
	color("red"){
		box(model_length, model_depth, model_height, 1);
	}
}
*/

hopper(model_length, model_depth, model_height, model_opening, rail_depth, rail_height, rail_thickness, stacker_height, stacker_wall_thickness, box_height, model_slack);
