//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

module top_right()
{
rotate(180, [1, 0, 0])
 translate([-250, -230, 0])
	difference() {
		union(){
			intersection() {
			
				translate([250, 250, 0])
					cube([120, 120, 40], center = false);

				difference() {
					linear_extrude(height = 40) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 50) import("frameholes.dxf");
				}
	 
			}

			translate([340, 240, 0])
					cube([30, 10, 5], center = false);
			translate([240, 340, 0])
					cube([10, 30, 5], center = false);
			translate([340, 240, 35])
					cube([30, 10, 5], center = false);
			translate([240, 340, 35])
					cube([10, 30, 5], center = false);
					
					
					
					//print material to be removed after print
					
			translate([340, 235, 0])
					cube([25, 5, 40], center = false);
translate([235, 340, 0])
					cube([5, 25, 40], center = false);
		}

		translate([348, 245, 0])
		cylinder(h = 70, r=2);

		translate([363, 245, 0])
		cylinder(h = 70, r=2);

		translate([245, 350, 0])
		cylinder(h = 70, r=2);

		translate([245, 365, 0])
		cylinder(h = 70, r=2);
		
		/*
		translate([320, 265, -2])
		cube([45, 100, 20], center = false);
	 
		translate([255, 335, -2])
		cube([65, 30, 20], center = false);
		*/ 
		
		translate([0, 0, -5])
		linear_extrude(height = 40) 	import(file = "new10f.dxf", layer = "noname");
		//horizontal dow rod hole
		translate([100, 341, 10])
		rotate(90, [0, 1, 0])
		cylinder(h = 250, r=4);
		
		//vertical dow rod hole
		
		//translate([335, 125, 10]
		translate([335, 265, 10])
		rotate(90, [1, 0, 0])
		cylinder(h = 250, r=4);
		
		 
		//translate([245, 365, 25])
		//write("Prusa I3",t=10.5,h=10,center=true);translate([20,30,0]);

	}
}


 top_right();

