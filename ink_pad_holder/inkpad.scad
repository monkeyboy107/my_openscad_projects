length = 75.6;
lip_width = 3;
lip_depth = 4.5;
lip_length = length;
lip_thickness = 1.6;
base_height = 6;
base_x_offset = 0;
base_y_offset = 0;
base_z_offset = lip_depth;
base_length = length;
cap_x_offset = 6;
cap_y_offset = 6;
cap_z_offset = lip_depth + base_height;
cap_length = 63;
cap_height = 7;
base_dimentions = [
[0, 0, 0],
[base_length, 0, 0],
[0, base_length, 0],
[base_length, base_length, 0]
];
lip_dimentions = [
[0, 0, 0],
[lip_length, 0, 0],
[0, lip_length, 0],
[lip_length, lip_length, 0]
];
negative_lip_dimentions = [
[lip_thickness,lip_thickness, 0],
[lip_length -lip_thickness, lip_thickness, 0],
[lip_thickness, lip_length -lip_thickness, 0],
[lip_length -lip_thickness, lip_length -lip_thickness, 0]
];
cap_dimentions = [
[0, 0, 0],
[cap_length, 0, 0],
[0, cap_length, 0],
[cap_length, cap_length, 0]
];

difference(){
	hull(){
		for(dimention = lip_dimentions){
			translate(dimention){
				cylinder(lip_depth);
			}
		}
	}
	hull(){
		for(dimention = negative_lip_dimentions){
			translate(dimention){
				cylinder(lip_depth);
			}
		}
	}
}

translate([base_x_offset, base_y_offset, base_z_offset]){
	hull(){
		for (dimention = base_dimentions){
				translate(dimention){
					cylinder(base_height);
				}
			}
		}
}

translate([cap_x_offset, cap_y_offset, cap_z_offset]){
	hull(){
		for (dimention = cap_dimentions){
				translate(dimention){
					cylinder(cap_height);
				}
			}
		}
}
