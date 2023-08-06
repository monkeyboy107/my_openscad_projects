//Can dimensions
radius = 66.2/2;
top_radius = 53.67/2;
top_rise = 14.57;
bottom_radius = 50/2;
bottom_rise = 7.4;
height = 123.53;

module can(height, radius, top_rise, top_radius, bottom_rise, bottom_radius){
    //Getting measurements correct
    adjusted_height = height - top_rise - bottom_rise;
    adjusted_top_height = adjusted_height + bottom_rise;
    
    //Making the can
    //Top
    translate([0, 0, adjusted_top_height]){
        cylinder(bottom_rise, radius, top_radius);
    }
    //Main body
    translate([0, 0, bottom_rise]){
	    cylinder(adjusted_height, radius, radius);
    }
    //Bottom of can
    cylinder(bottom_rise, bottom_radius, radius);
}
can(height, radius, top_rise, top_radius, bottom_rise, bottom_radius);
