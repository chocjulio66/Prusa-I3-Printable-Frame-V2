//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>



module top_left()
{
 rotate(180, [1, 0, 0])
  translate([-70, -290, -40])
	//translate([0, -230, 0])
	
	difference() {
		union(){
		
			intersection() {
			
				translate([0, 250, 0])
					cube([120, 120, 40], center = false);

				difference() {
					linear_extrude(height = 40) import("routermount3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 50) import("frameholes.dxf");
				}
	 
			}

			
				
			
			translate([0, 240, 0])
					cube([30, 10, 5], center = false);
			translate([120, 340, 0])
					cube([10, 30, 5], center = false);
					
			translate([0, 240, 35])
					cube([30, 10, 5], center = false);
			translate([120, 340, 35])
					cube([10, 30, 5], center = false);

						translate([0, 235, 0])
					cube([25, 5, 40], center = false);
					
					
					translate([130, 345, 0])
					cube([5, 25, 40], center = false);

		}

		translate([125, 350, 0])
		cylinder(h = 70, r=2);

		translate([125, 365, 0])
		cylinder(h = 70, r=2);

		translate([8, 245, 0])
		cylinder(h = 70, r=2);

		translate([23, 245, 0])
		cylinder(h = 70, r=2);
/*	 
		translate([5, 265, -2])
		cube([45, 100, 40], center = false);
	 
		translate([45, 335, -2])
		cube([65, 30, 40], center = false);
*/
		
		
		
			
	translate([0, 0, -2])
	linear_extrude(height = 40) 	import(file = "new9.dxf", layer = "noname");
	
		
		//horizontal dow rod hole
		translate([100, 341, 10])
		rotate(90, [0, 1, 0])
		cylinder(h = 250, r=4);
		
		//vertical dow rod hole
		translate([40, 265, 10])
		//translate([40, 285, 10])
		rotate(90, [1, 0, 0])
		cylinder(h = 250, r=4);
		
		translate([75, 350, 41])
		write("Prusa",t=6,h=23,center=true);translate([20,30,0]);

	 
	}

	
		
	
	}


 top_left();


