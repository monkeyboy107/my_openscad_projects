//base_point
base_point_radius = 1;
base_point_height = 1;
x_base_point = 0;
y_base_point = 0;
z_base_point = 0;

//x_point
x_point_radius = 1;
x_point_height = 1;
x_x_point = 153.87;
y_x_point = 0;
z_x_point = 0;

//y_point
y_point_radius = 1;
y_point_height = 1;
x_y_point = 0;
y_y_point = 153.86 + 66.89;
z_y_point = 0;

//z_point
z_point_radius = 1;
z_point_height = 1;
x_z_point = 0;
y_z_point = 0;
z_z_point = 70.34;

//The object
union(){
	hull(){
	    translate([x_base_point, y_base_point, z_base_point]){
		cylinder(base_point_height, base_point_radius, base_point_radius);
	    }
	    translate([x_z_point, y_z_point, z_z_point]){
		cylinder(z_point_height, z_point_radius, z_point_radius);
	    }
	}
	hull(){
	    translate([x_base_point, y_base_point, z_base_point]){
		cylinder(base_point_height, base_point_radius, base_point_radius);
	    }
	    translate([x_y_point, y_y_point, z_y_point]){
		cylinder(y_point_height, y_point_radius, y_point_radius);
	    	}
    	}
	hull(){
	    translate([x_base_point, y_base_point, z_base_point]){
		cylinder(base_point_height, base_point_radius, base_point_radius);
	    }
	    translate([x_x_point, y_x_point, z_x_point]){
		cylinder(x_point_height, x_point_radius, x_point_radius);
	    }
	}
}
