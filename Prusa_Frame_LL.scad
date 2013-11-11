//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

//translate([0,30,0])

module lower_left()
{
rotate(180, [1, 0, 0])
difference() {

	union(){

		intersection() {
		
			translate([0, 0, 0])
			cube([120, 120, 40], center = false);

 			difference() {
			 	linear_extrude(height = 40) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 50) import("frameholes.dxf");
				//linear_extrude(height = 5) import("logo.dxf");
			}
		}
		translate([120, 5, 0])
				cube([10, 30, 5], center = false);
		translate([0, 120, 0])
				cube([30, 10, 5], center = false);

		translate([120, 5, 35])
				cube([10, 30, 5], center = false);
		translate([0, 120, 35])
				cube([30, 10, 5], center = false);

	}

	//put holes through the wings
	translate([125, 11, 0])
	cylinder(h = 70, r=2);

	translate([125, 26, 0])
	cylinder(h = 70, r=2);

	translate([8, 125, 0])
	cylinder(h = 70, r=2);

	translate([23, 125, 0])
	cylinder(h = 70, r=2);

	//hollow out part for easy printing
	/*translate([5, 7, -2])
	cube([45, 70, 20], center = false);

    translate([5, 5, -2])
	cube([21, 70, 20], center = false);

    translate([45, 4, -2])
	cube([21, 40, 20], center = false);

	translate([5, 85, -2])
	cube([45, 30, 20], center = false);

	translate([35, 7, -2])
	cube([45, 30, 20], center = false);
*/
	
	translate([0, 0, -2])
 
	linear_extrude(height = 40) 	import(file = "new6.dxf", layer = "cutout");
	
	
	
    //put dow rod through parts
	translate([40, 125, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 50, r=4);

	translate([40, 30, 45])
	write("Prusa I3",t=10.5,h=10,center=true);translate([20,30,0]);

	}
}

 
 
lower_left();
 

