//Includes 
use <../base/cube_base.scad>
use <../base/cube_stacker_base.scad>

//Model information
model_length = 15;
model_depth = 35;
model_height = 4;
model_offset = 3;
model_opening = model_height * 1.3;
box_height = 1;
model_slack = 1.3;
stacker_height = model_height * 6;
stacker_wall_thickness = 1;

/*
translate([model_offset, model_offset, 0]){
	color("red"){
		box(model_length, model_depth, model_height, 1);
	}
}
*/

stacker(model_length, model_depth, model_height, model_opening, stacker_height, stacker_wall_thickness, box_height, model_slack);
