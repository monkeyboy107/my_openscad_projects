use <dove_tail.scad>
//Brace settings
height = 10;
length = 100;
width = 10;

//Dove tail settings
dove_tail_top = height -1;
dove_tail_right = height/2 -.5 -1;
dove_tail_left = height/2 -.5 -1;
dove_tail_width = 1;
dove_tail_thickness = width - dove_tail_width - dove_tail_width;
dove_tail_rotation_x = 0;
dove_tail_rotation_y = 90;
dove_tail_rotation_z = 0;
dove_tail_translate_x = -height;
dove_tail_translate_y = 0;
dove_tail_translate_z = dove_tail_left + dove_tail_right + dove_tail_width + dove_tail_width + 2;

//Dove tail negative
dove_tail_negative_height_offset = 1;
dove_tail_negative_top = dove_tail_top;
dove_tail_negative_right = dove_tail_right;
dove_tail_negative_left = dove_tail_left;
dove_tail_negative_width = dove_tail_width;
dove_tail_negative_thickness = dove_tail_thickness + 2;
dove_tail_negative_rotation_x = dove_tail_rotation_x;
dove_tail_negative_rotation_y = dove_tail_rotation_y;
dove_tail_negative_rotation_z = dove_tail_rotation_z;
dove_tail_negative_translate_x = length;
dove_tail_negative_translate_y = dove_tail_translate_y;
dove_tail_negative_translate_z = height;

translate([dove_tail_translate_x, dove_tail_translate_y, dove_tail_translate_z]){
    rotate([dove_tail_rotation_x, dove_tail_rotation_y, dove_tail_rotation_z]){
        dove_tail(dove_tail_top, dove_tail_left, dove_tail_right, dove_tail_width, dove_tail_thickness);
    }
}

translate([dove_tail_negative_translate_x, dove_tail_negative_translate_y, dove_tail_negative_translate_z]){
    rotate([dove_tail_rotation_x, dove_tail_rotation_y, dove_tail_rotation_z]){
        dove_tail_negative(dove_tail_negative_top, dove_tail_negative_left, dove_tail_negative_right, dove_tail_negative_width, dove_tail_negative_thickness, dove_tail_negative_height_offset);
    }
}

cube([length, width, height]);
