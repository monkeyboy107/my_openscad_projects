//Includes 
use <../base/cube_base.scad>

//Model information
model_length = 10;
model_depth = 10;
model_height = 10;
model_offset = 0;
rail_depth = .5;
rail_height = 3;
rail_thickness = 10;
box_height = 1;
model_opening = 0;
model_slack = 10;
hopper_height = 100;
hopper_wall_thickness = 10;

/*
translate([model_offset, model_offset, 0]){
	box(model_length, model_depth, model_height, 1);
}
*/

module hopper(model_length, model_depth, model_height, model_opening, rail_depth, rail_height, rail_thickness, hopper_height, hopper_wall_thickness, box_height, model_slack){
	//Calculated
	wall_length_calc = model_length * model_slack;
	model_depth_calc = model_depth * model_slack;
	model_height_calc = model_height * model_slack;

	//Wall 
	wall_length = [wall_length_calc, hopper_wall_thickness, wall_length_calc, hopper_wall_thickness];
	wall_depth = [hopper_wall_thickness, model_depth_calc, hopper_wall_thickness, model_depth_calc];
	wall_height = [hopper_height, hopper_height, hopper_height -model_opening, hopper_height];
	wall_box_height = [box_height, box_height, box_height, box_height];
	wall_offset = [
	[0, 0, 0],
	[0, 0, 0],
	[0, model_depth_calc - hopper_wall_thickness, model_opening],
	[wall_length_calc, 0, 0]
	];

	wall = [
	wall_length,
	wall_depth,
	wall_height,
	wall_box_height,
	wall_offset
	];
	
	//Rail
	rail = [
	rail_depth,
	model_depth_calc,
	rail_thickness
	];
	rail_offset_1 = [
	0,
	0,
	rail_height
	];
	rail_offset_2 = [
	wall_length_calc + hopper_wall_thickness -rail_depth,
	0,
	rail_height
	];
	rail_offset_3 = [
	0,
	0,
	hopper_height - rail_height - rail_thickness
	];
	rail_offset_4 = [
	wall_length_calc + hopper_wall_thickness -rail_depth,
	0,
	hopper_height - rail_height - rail_thickness
	];
	rail_offsets = [rail_offset_1, rail_offset_2, rail_offset_3, rail_offset_4];
	
	difference(){
		for(segment = [0:3]){
			translate(wall[4][segment]){
				box(wall[0][segment], wall[1][segment], wall[2][segment], wall[3][segment]);
			}
		}
		for(rail_offset = rail_offsets){
			translate(rail_offset){
				box(rail[0], rail[1], rail[2], 1);
			}
		}
	}
}
hopper(model_length, model_depth, model_height, model_opening, rail_depth, rail_height, rail_thickness, hopper_height, hopper_wall_thickness, box_height, model_slack);
