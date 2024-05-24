top_radius = 10;
bottom_radius = 10;
height = 20;

if (top_radius > bottom_radius){
	translate([top_radius, top_radius, 0]){
		cylinder(height, bottom_radius, top_radius, center=false);
	}
}
else
{
	movement = [bottom_radius, bottom_radius, 0];
	translate([bottom_radius, bottom_radius, 0]){
		cylinder(height, bottom_radius, top_radius, center=false);
	}
}
