//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

 


module top_center()
{
//asd	
rotate(180, [1, 0, 0])
 translate([-120, -325, 0])
//rotate(180, [1, 0, 0])
	difference() {
		intersection() {
		
		translate([120, 330, 0])
			cube([130, 130, 40], center = false);

 		difference() {
			linear_extrude(height = 40) import("new3.dxf");
			translate([0, 0, -5])
			linear_extrude(height = 50) import("frameholes.dxf");
			
			translate([120, 340, 0])
				cube([10, 30, 5], center = false);
			translate([240, 340, 0])
				cube([10, 30, 5], center = false);
				
			translate([120, 340, 35])
				cube([10, 30, 5], center = false);
			translate([240, 340, 35])
				cube([10, 30, 5], center = false);
		}
 
	}

	translate([245, 350, 0])
	cylinder(h = 70, r=2);

	translate([245, 365, 0])
	cylinder(h = 70, r=2);
    
    translate([125, 350, 0])
	cylinder(h = 70, r=2);

	translate([125, 365, 0])
	cylinder(h = 70, r=2);
	
	
	translate([132, 332, -2])
	cube([105, 35, 40], center = false);
	
	
		translate([120, 341, 10])
		rotate(90, [0, 1, 0])
		cylinder(h = 250, r=4);
	
	translate([145, 345, 45])
	write("I3",t=12.5,h=24,center=true);translate([20,30,0]);
	
	}
}

 
 top_center();
 

