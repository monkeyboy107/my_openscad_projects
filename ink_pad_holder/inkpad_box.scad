//Box dimentions
box_length = 100;
box_width = box_length;
box_height = 30;
box_wall_thickness = 1;
box_z_offset = 0;
box_dimentions = [
[0,0,box_z_offset],
[box_length,0,box_z_offset],
[0,box_width,box_z_offset],
[box_length,box_width,box_z_offset]
];

//Box negative
negative_box_height = 0;
negative_box_dimentions = [
[0 + box_wall_thickness,0 + box_wall_thickness, negative_box_height + box_wall_thickness],
[box_length - box_wall_thickness, 0 + box_wall_thickness, negative_box_height + box_wall_thickness],
[0 + box_wall_thickness, box_width - box_wall_thickness, negative_box_height + box_wall_thickness],
[box_length - box_wall_thickness, box_width - box_wall_thickness, negative_box_height + box_wall_thickness]
];
front_dimentions = [
[box_length, box_width, box_z_offset],
[0, box_width, box_z_offset],
];

//Box foot
foot_width = box_length/100*80;
foot_depth = foot_width;
foot_thickness = 3;
foot_x_offset = box_length/100*10;
foot_y_offset = box_length/100*10;
foot_z_offset = 0;
foot_height = 3;
box_foot_dimentions = [
[0, 0, 0],
[0, foot_width, 0],
[foot_depth, 0, 0],
[foot_depth, foot_width, 0],
];

negative_box_foot_dimentions = [
[0 + foot_thickness, 0 + foot_thickness, 0],
[0 + foot_thickness, foot_width- foot_thickness, 0],
[foot_depth - foot_thickness, 0 + foot_thickness, 0],
[foot_depth -foot_thickness, foot_width - foot_thickness, 0],
];
//Box top connector
top_width = box_length/100*70;
top_depth = top_width;
top_thickness = 3;
top_x_offset = box_length/100*15;
top_y_offset = box_length/100*15;
top_z_offset = foot_height + box_height;
top_height = 3;
negative_box_top_dimentions = [
[0, 0, 0],
[0, top_width, 0],
[top_depth, 0, 0],
[top_depth, top_width, 0],
];

box_top_dimentions = [
[0 + top_thickness, 0 + top_thickness, 0],
[0 + top_thickness, top_width- top_thickness, 0],
[top_depth - top_thickness, 0 + top_thickness, 0],
[top_depth -top_thickness, top_width - top_thickness, 0],
];

//Construct the box
translate([0, 0, foot_height]){
	difference(){
		hull(){
		    for (dimention = box_dimentions){
		    	translate(dimention){
		    		cylinder(box_height, center=false);
		    	}
		    }
		}
		hull(){
		    for (dimention = negative_box_dimentions){
		    	translate(dimention){
		    		cylinder(box_height - box_wall_thickness *2, center=false);
		    	}
		    }
		}
		hull(){
		    for (dimention = front_dimentions){
			translate(dimention){
				cylinder(box_height * 100, center=false);
			}
		    }
		}
	}
}

translate([foot_x_offset, foot_y_offset, foot_z_offset]){
	difference(){
		hull(){
			for(dimention = box_foot_dimentions){
				translate(dimention){
					cylinder(foot_height);
				}
			}
		}
		hull(){
			for(dimention = negative_box_foot_dimentions){
				translate(dimention){
					cylinder(foot_height);
				}
			}
		}
	}
}
translate([top_x_offset, top_y_offset, top_z_offset]){
	union(){
		hull(){
			for(dimention = box_top_dimentions){
				translate(dimention){
					cylinder(top_height);
				}
			}
		}
		hull(){
			for(dimention = negative_box_top_dimentions){
				translate(dimention){
					cylinder(top_height);
				}
			}
		}
	}
}

// inkpad
inkpad_location_x = 10;
inkpad_location_y = 10;
inkpad_location_z = box_wall_thickness + 3;

translate([inkpad_location_x, inkpad_location_y, inkpad_location_z]){
//	import ("inkpad.stl");
}


