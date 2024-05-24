$fn=255;

endo_diameter = 6/2;
wall_thickness = 2 + endo_diameter;
height = 36;

module collar(endo_diameter, wall_thickness, height){
	difference(){
		cylinder(height, wall_thickness, wall_thickness);
		cylinder(height, endo_diameter, endo_diameter);
	}
}

collar(endo_diameter, wall_thickness, height);
