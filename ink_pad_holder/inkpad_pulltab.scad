////Back dimentions
back_height = 10;
back_width = 90;
back_length = 3;
back_dimentions = [
[0, 0, 0],
[back_width, 0, 0],
[0, back_length, 0],
[back_width, back_length, 0]
];

//Left arm
left_height = 10;
left_width = 3;
left_length = 90;
left_dimentions = [
[0, 0, 0],
[left_width, 0, 0],
[0, left_length, 0],
[left_width, left_length, 0]
];

//Right arm
right_height = 10;
right_width = 3;
right_length = 110;
right_arm_x_offset = 90;
right_arm_y_offset = 0;
right_dimentions = [
[right_arm_x_offset, right_arm_y_offset, 0],
[right_width + right_arm_x_offset, right_arm_y_offset, 0],
[right_arm_x_offset, right_length + right_arm_y_offset, 0],
[right_width + right_arm_x_offset, right_length + right_arm_y_offset, 0]
];

for(dimentions = [back_dimentions, left_dimentions, right_dimentions]){
	hull(){
		for(dimention = dimentions){
			translate(dimention){
				cylinder(back_height);
			}
		}
	}
}

translate([10, 3, 0]){
//	import("inkpad.stl");
}
