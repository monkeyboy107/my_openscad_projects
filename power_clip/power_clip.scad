//Top size
top_diameter = 11.71/2;

//Clip_rod
rod_diameter = 3;
height = 110;

//Top
solid_top_diamonter = top_diameter * .2 + top_diameter;
top_height = 10;
position_top_x = solid_top_diamonter;
position_top_y = 0;
position_top_z = 0;

//Negative top
negative_top_diameter = top_diameter;
negative_position_top_x = 2;
negative_position_top_y = 0;
negative_position_top_z = 0;

//Ferrites
ferrites_diameter = 20.19/2;
solid_ferrites_diamonter = ferrites_diameter * .15 + ferrites_diameter;
ferrites_height = 10;
position_ferrites_x = solid_ferrites_diamonter;
position_ferrites_y = 0;
position_ferrites_z = height - ferrites_height;

//Negative ferrites
negative_ferrites_diameter = ferrites_diameter;
negative_position_ferrites_x = 2;
negative_position_ferrites_y = 0;
negative_position_ferrites_z = 0;

translate([position_top_x, position_top_y, position_top_z]){
	difference() {
		cylinder(top_height, solid_top_diamonter, solid_top_diamonter);
		translate([negative_position_top_x, negative_position_top_y, negative_position_top_z]){
			color([0, 1, 0]) cylinder(top_height, negative_top_diameter, negative_top_diameter);
		}
	}
}

cylinder(height, rod_diameter, rod_diameter);

translate([position_ferrites_x, position_ferrites_y, position_ferrites_z]){
	difference() {
		cylinder(ferrites_height, solid_ferrites_diamonter, solid_ferrites_diamonter);
		translate([negative_position_ferrites_x, negative_position_ferrites_y, negative_position_ferrites_z]){
			color([0, 1, 0]) cylinder(ferrites_height, negative_ferrites_diameter, negative_ferrites_diameter);
		}
	}
}

