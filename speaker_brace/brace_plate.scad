use <dove_tail.scad>
//Brace
width = 30;
height = 3;
length = 30; 

//Dove tail settings
dove_tail_left = 3.5;
dove_tail_right = 3.5;
dove_tail_top = 9;
dove_tail_width = 1;
dove_tail_thickness = width - 2;
dove_tail_x = dove_tail_left + dove_tail_right + 2;
dove_tail_y = 0;
dove_tail_z = height + dove_tail_top + 2;
dove_tail_rotate_x = 0;
dove_tail_rotate_y = 180 - 45;
dove_tail_rotate_z = 0;

//Top mount 
top_width = 8;
top_length = width;
top_height = 1;
top_x = 8.16;
top_y = 0;
top_z = 7.0625;
top_rotate_x = 0;
top_rotate_y = 45;
top_rotate_z = 0;

cube([width, length, height]);

translate([top_x, top_y, top_z]){
    rotate([top_rotate_x, top_rotate_y, top_rotate_z]){
        cube([top_width, top_length, top_height]);
    }
}

translate([dove_tail_x, dove_tail_y, dove_tail_z]){
    rotate([dove_tail_rotate_x, dove_tail_rotate_y, dove_tail_rotate_z]){
        dove_tail(dove_tail_top, dove_tail_left, dove_tail_right, dove_tail_width, dove_tail_thickness);
    }
}
