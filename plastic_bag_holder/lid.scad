use <../case_template/lid.scad>
//Lid
height = 4;
length = 1;
x = 239.26;
y = 70.34;

//Lid lip
lip_height = 8;
lip_length = 1;
lip_percent = .9; 

//Opening
opening_length = x/2;
opening_width = y/2;

lid_with_opening(height, length, x, y, lip_height, lip_length, lip_percent, opening_length, opening_width);
