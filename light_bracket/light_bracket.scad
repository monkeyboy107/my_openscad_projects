$fn = 1000;

//base cylinder
base_height = 2;
base_diameter = 50/2;

//lip cylinder
lip_diameter = 43/2;
lip_height = 4;


//negative cylinder
negative_height = 100;
negative_diameter = 33/2;

difference(){
	union(){
	    cylinder(base_height, base_diameter, base_diameter);
	    cylinder(lip_height, lip_diameter, lip_diameter);
	}
	cylinder(negative_height, negative_diameter, negative_diameter);
}
