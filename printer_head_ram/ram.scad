width = 70;
negative_width = 62;
move_negative = [(width - negative_width) /2, 0, 0];
move_negative2 = [(width - negative_width) /2, 0, negative_width];

difference(){
	cube(width);
	translate(move_negative){
		cube(negative_width);
	}
	translate(move_negative2){
		cube(negative_width);
	}

}

