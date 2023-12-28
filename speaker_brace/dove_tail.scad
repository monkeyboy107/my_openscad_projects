top = 10;
left = 10;
right = 10;
width = 1;
thickness = 10;
height_offset = 10;

module dove_tail(top, left, right, width, thickness){
    translate([right, 0, 0]){
        hull(){
            translate([0, 0, 0]){
                translate([left + width, 0, 0]){
                    cube(width);
                }
                translate([right * -1 + width, 0, 0]){
                    cube(width);
                }
                translate([width, 0, top]){
                    cube(width);
                }
            }
            translate([0, thickness, 0]){
                translate([left + width, width, 0]){
                    cube(width);
                }
                translate([right * -1 + width, width, 0]){
                    cube(width);
                }
                translate([width, width, top]){
                    cube(width);
                }
            }
        }
    }
}
module dove_tail_negative(top, left, right, width, thickness, height_offset){
    length_percent = 1;
    length = left + right + width + width + width;
    height = top + height_offset;
    difference(){
        translate([0, 0, 0]){
            cube([length * length_percent, thickness, height]);
        }
        translate([length - length, 0, 0]){
            dove_tail(top, left, right, width, thickness);
        }
    }
}

dove_tail(top, left, right, width, thickness);
translate([left + right + 10, 0, 0 ]){
    dove_tail_negative(top, left, right, width, thickness, height_offset);
}
