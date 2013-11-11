//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

 
 

module lower_right()
{
rotate(180, [1, 0, 0])
translate([-230,0,0])
	difference() {
		union(){
			intersection() {
			
				translate([250, 0, 0])
				cube([120, 120, 40], center = false);

				difference() {
					linear_extrude(height = 40) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 50) import("frameholes.dxf");
				}
	 
			}

			translate([240, 5, 0])
			cube([10, 30, 5], center = false);
			translate([340, 120, 0])
			cube([30, 10, 5], center = false);
			
			translate([240, 5, 35])
			cube([10, 30, 5], center = false);
			translate([340, 120, 35])
			cube([30, 10, 5], center = false);

			rotate(90, [1, 0, 0])
			translate([231, 5, -20])
			cube([10, 35, 5], center = false);
			
			rotate(90, [1, 0, 0])
			translate([355, 5, -135])
			cube([10, 35, 5], center = false);
			
		}

		translate([245, 11, 0])
		cylinder(h = 70, r=2);

		translate([245, 26, 0])
		cylinder(h = 70, r=2);

		translate([348, 125, 0])
		cylinder(h = 70, r=2);

		translate([363, 125, 0])
		cylinder(h = 70, r=2);





	//hollow out part for easy printing
/*	translate([320, 7, -2])
	cube([45, 70, 20], center = false);

    translate([297, 5, -2])
	cube([27, 40, 20], center = false);

    translate([344, 4, -2])
	cube([21, 40, 20], center = false);

	translate([320, 85, -2])
	cube([45, 30, 20], center = false);

	translate([283, 6, -2])
	cube([45, 30, 20], center = false);

	
	
	
		//hollow out part for easy printing
	translate([320, 7, -2])
	cube([45, 70, 20], center = false);

    translate([297, 5, -2])
	cube([21, 70, 20], center = false);

    translate([344, 4, -2])
	cube([21, 40, 20], center = false);

	translate([320, 85, -2])
	cube([45, 30, 20], center = false);

	translate([283, 7, -2])
	cube([45, 30, 20], center = false);
	*/
	
	translate([0, 0, -2])
	linear_extrude(height = 40) 	import(file = "new7.dxf", layer = "cutout");
	
	
				 
    //put dow rod through parts
	translate([335, 125, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 50, r=4);

	//translate([340, 30, 25])
	//write("Prusa I3",t=10.5,h=10,center=true);translate([20,30,0]);

	}
	
	
	
}


 

//Build Frame one piece at a time!
 lower_right();
 

