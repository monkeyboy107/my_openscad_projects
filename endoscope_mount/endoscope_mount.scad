use<endoscope_collar.scad>

//Collar
collar_endo_diameter = 6/2;
collar_wall_thickness = 2 + collar_endo_diameter;
collar_height = 36;

//Mounting plate
plate_x = 10;
plate_y = 0;
plate_z = 46;
plate_translate = [-5, collar_wall_thickness, 0];
plate_bottom_left = [0, 0, 0];
plate_bottom_right = [plate_x, 0, 0];
plate_top_left = [0, 0, plate_z];
plate_top_right = [plate_x, 0, plate_z];
plate_dimentions = [
plate_bottom_left,
plate_bottom_right,
plate_top_left,
plate_top_right
];

//Hook top
hook_top_x = 10;
hook_top_y = -15;
hook_top_z = 46;
hook_top_translate = [-5, collar_wall_thickness, plate_z];
hook_top_hole_translate = [hook_top_x/2, -5, 0];
hook_top_back_left = [0, 0, 0];
hook_top_back_right = [hook_top_x, 0, 0];
hook_top_forward_left = [0, hook_top_y, 0];
hook_top_forward_right = [hook_top_x, hook_top_y, 0];
hook_top_dimentions = [
hook_top_back_left,
hook_top_back_right,
hook_top_forward_left,
hook_top_forward_right
];

//Hook lip
hook_lip_x = 10;
hook_lip_y = 0;
hook_lip_z = 3;
hook_lip_thickness = 10;
hook_lip_translate = [-5, collar_wall_thickness + hook_top_y, hook_top_z - hook_lip_z];
hook_lip_bottom_left = [0, 0, 0];
hook_lip_bottom_right = [hook_lip_x, 0, 0];
hook_lip_top_left = [0, 0, hook_lip_z];
hook_lip_top_right = [hook_lip_x, 0, hook_lip_z];
hook_lip_dimentions = [
hook_lip_bottom_left,
hook_lip_bottom_right,
hook_lip_top_left,
hook_lip_top_right
];

translate(hook_lip_translate){
	hull(){
		for(dimention = hook_lip_dimentions){
			translate(dimention){
				cylinder(1);
			}
		}
	}
}

translate(plate_translate){
	hull(){
		for(dimention = plate_dimentions){
			translate(dimention){
				cylinder(1);
			}
		}
	}
}

translate(hook_top_translate){
	difference(){
		hull(){
			for(dimention = hook_top_dimentions){
				translate(dimention){
					cylinder(1);
				}
			}
		}
		translate(hook_top_hole_translate){
			cylinder(collar_height, collar_endo_diameter, collar_endo_diameter);
		}
	}
}

collar(collar_endo_diameter, collar_wall_thickness, collar_height);
