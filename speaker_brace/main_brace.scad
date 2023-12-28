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

//Dove tail negative top
dove_tail_negative_top_rotation_x = dove_tail_rotation_x;
dove_tail_negative_top_rotation_y = 45;
dove_tail_negative_top_rotation_z = dove_tail_rotation_z;
dove_tail_negative_top_translate_x = length/2;
dove_tail_negative_top_translate_y = dove_tail_translate_y;
dove_tail_negative_top_translate_z = height * 1.7;

//Top brace settings
top_height = height + 1.35;
top_length = 10;
top_width = width;
top_x = length/2 - dove_tail_top + 1;
top_y = 0;
top_z = dove_tail_top;
top_rotate_x = 0;
top_rotate_y = 45;
top_rotate_z = 0;

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

translate([dove_tail_negative_top_translate_x, dove_tail_negative_top_translate_y, dove_tail_negative_top_translate_z]){
    rotate([dove_tail_negative_top_rotation_x, dove_tail_negative_top_rotation_y, dove_tail_negative_top_rotation_z]){
        dove_tail_negative(dove_tail_negative_top, dove_tail_negative_left, dove_tail_negative_right, dove_tail_negative_width, dove_tail_negative_thickness, dove_tail_negative_height_offset);
    }
}

translate([top_x, top_y, top_z]){
    rotate([top_rotate_x, top_rotate_y, top_rotate_z]){
        cube([top_length, top_width, top_height]);
    }
}

cube([length, width, height]);
