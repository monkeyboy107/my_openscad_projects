//Editiable values
include<case.scad>

//Case values
width = 130;
length = 82;
wall_height = 22;
x_offset = 0;
y_offset = 0;
z_offset = 8.86;
wall_thickness = 3;


//Offset_value
backside_x_offset = -4;
frontside_x_offset = width;
port_z_offset = z_offset + 2.26;
port_y_offset = length;

//Ethernet
ethernet_x = 20.12;
ethernet_y = 21.22;
ethernet_z = 17;
ethernet_position_x = backside_x_offset;
ethernet_position_y = 31;
ethernet_position_z = port_z_offset;

//Power
power_cable_x = 11.58;
power_cable_y = 14.53;
power_cable_z = 10.63;
power_cable_position_x = backside_x_offset;
power_cable_position_y = 11.6;
power_cable_position_z = port_z_offset;

//HDMI
hdmi_x = 11.43;
hdmi_y = 17.04;
hdmi_z = 10.6;
hdmi_position_x = backside_x_offset;
hdmi_position_y = 53;
hdmi_position_z = port_z_offset;

//SATA Main Card
sata_x = 67.5;
sata_y = 7.3;
sata_z = 58.18;
sata_position_x = backside_x_offset;
sata_position_y = 0;
sata_position_z = port_z_offset;


//Face SATA card
sata_face_x = 3.25;
sata_face_y = 15.15;
sata_face_z = 80;
sata_face_position_x = backside_x_offset;
sata_face_position_y = -8;
sata_face_position_z = port_z_offset -10;

//USB1
usb1_x = 10;
usb1_y = 18.25;
usb1_z = 18.25;
usb1_position_x = frontside_x_offset;
usb1_position_y = 56.64;
usb1_position_z = port_z_offset;

//USB2
usb2_x = 10;
usb2_y = 18.25;
usb2_z = 18.25;
usb2_position_x = frontside_x_offset;
usb2_position_y = 39.14;
usb2_position_z = port_z_offset;

//Power buttom
power_button_x = 10;
power_button_y = 16.25;
power_button_z = 9;
power_button_position_x = frontside_x_offset;
power_button_position_y = 19;
power_button_position_z = port_z_offset;

//Reset button
reset_button_x = 10;
reset_button_y = 16.25;
reset_button_z = 9;
reset_button_position_x = frontside_x_offset;
reset_button_position_y = 29;
reset_button_position_z = port_z_offset;

//Audio
audio_x = 10;
audio_y = 13;
audio_z = 7;
audio_position_x = frontside_x_offset;
audio_position_y = 10.5;
audio_position_z = port_z_offset;

//Side load
side_x = 130;
side_y = 10;
side_z = 20;
side_position_x = 0;
side_position_y = port_y_offset;
side_position_z = port_z_offset;

//The box
module make_case(){
	difference(){
		case(width,
		     length,
		     wall_height,
		     wall_thickness,
		     x_offset,
		     y_offset,
		     z_offset);
		/*translate([-4, -10, 0]){
			color([1, 0, 0]) cube([135, 100, 10]);
		}*/
		translate([ethernet_position_x, ethernet_position_y, ethernet_position_z]){
			color([0, 1, 0]) cube([ethernet_x, ethernet_x, ethernet_z]);
		}
		translate([power_cable_position_x, power_cable_position_y, power_cable_position_z]){
			color([0, 1, 0]) cube([power_cable_x, power_cable_y, power_cable_z]);
		}
		translate([hdmi_position_x, hdmi_position_y, hdmi_position_z]){
			color([0, 1, 0]) cube([hdmi_x, hdmi_y, hdmi_z]);
		}
		translate([sata_position_x, sata_position_y, sata_position_z]){
			color([0, 1, 0]) cube([sata_x, sata_y, sata_z]);
		}
		translate([sata_face_position_x, sata_face_position_y, sata_face_position_z]){
			color([0, 1, 0]) cube([sata_face_x, sata_face_y, sata_face_z]);
		}
		translate([usb1_position_x, usb1_position_y, usb1_position_z]){
			color([0, 1, 0]) cube([usb1_x, usb1_y, usb1_z]);
		}
		translate([usb2_position_x, usb2_position_y, usb2_position_z]){
			color([0, 1, 0]) cube([usb2_x, usb2_y, usb2_z]);
		}
		translate([power_button_position_x, power_button_position_y, power_button_position_z]){
			color([0, 1, 0]) cube([power_button_x, power_button_y, power_button_z]);
		}
		translate([reset_button_position_x, reset_button_position_y, reset_button_position_z]){
			color([0, 1, 0]) cube([reset_button_x, reset_button_y, reset_button_z]);
		}
		translate([audio_position_x, audio_position_y, audio_position_z]){
			color([0, 1, 0]) cube([audio_x, audio_y, audio_z]);
		}
		translate([side_position_x, side_position_y, side_position_z]){
			color([0, 1, 0]) cube([side_x, side_y, side_z]);
		}
	}
}
make_case();
