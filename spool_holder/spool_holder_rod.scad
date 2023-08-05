$fn = 40;

thickness = 5;
height = 150;
x_rotation = 0;
y_rotation = 0;
z_rotation = 0;

x_adjustment = 0;
y_adjustment = 0;
z_adjustment = thickness; 
z_adjustment = 0; 

translate([x_adjustment, y_adjustment, z_adjustment]){
    rotate([x_rotation, y_rotation, z_rotation]){
        cylinder(height, thickness, thickness);
    }
}
