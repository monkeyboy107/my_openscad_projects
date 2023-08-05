//Lid
height = 1;
length = 1;
x = 220.78;
y = 70.34;

//Lid lip
lip_height = 4;
lip_length = 1;
lip_percent = .9; 

//Opening
opening_length = x/2;
opening_width = y/2;


module lid(height, lenght, x, y, lip_height, lip_lenght, lip_percent){
        //lip_x_y
	lip_x = x * lip_percent;
	lip_y = y * lip_percent;

	//Middle
	x_middle = (x - lip_x)/2;
	y_middle = (y - lip_y)/2;
	
	//Object
	union(){
		hull(){
		    translate([0, 0, 0]){
			cylinder(height);
		    }
		    translate([x, 0, 0]){
			cylinder(height);
		    }
		    translate([0, y, 0]){
			cylinder(height);
		    }
		    translate([x, y, 0]){
			cylinder(height);
		    }
		}
		translate([x_middle, y_middle, 0]) hull(){
		    translate([0, 0, 0]){
			cylinder(lip_height);
		    }
		    translate([lip_x, 0, 0]){
			cylinder(lip_height);
		    }
		    translate([0, lip_y, 0]){
			cylinder(lip_height);
		    }
		    translate([lip_x, lip_y, 0]){
			cylinder(lip_height);
		    }
		}
	}
}

module lid_with_opening(height, lenght, x, y, lip_height, lip_lenght, lip_percent, opening_length, opening_width){
    //lip_x_y
    lip_x = x * lip_percent;
    lip_y = y * lip_percent;

    //Middle
    x_middle = lip_x/4;
    y_middle = lip_y/2;

    difference(){
        lid(height, lenght, x, y, lip_height, lip_lenght, lip_percent);	
	color([0, 1, 0]) union(){
		translate([x_middle, y_middle, 0]){	
			rotate([0, 90, 0]){
				cylinder(opening_length, opening_width/2, opening_width/2);
			}
		}
		/*translate([x_middle, y_middle, 0]){
		    sphere(opening_width/2);
		}
		translate([opening_length, y_middle, 0]){
		    sphere(opening_width/2);
		}*/
        }
    }
}

lid_with_opening(height, length, x, y, lip_height, lip_length, lip_percent, opening_length, opening_width);
