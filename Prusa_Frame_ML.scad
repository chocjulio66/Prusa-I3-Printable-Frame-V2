use <write.scad>

module middle_left()
{

 

rotate(180, [1, 0, 0])
	  translate([0, -230, 0])

difference() {

		intersection() {
		
			translate([0, 120, 0])
				cube([120, 130, 40], center = false);

 			difference() {
			 	linear_extrude(height = 40) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 50) import("frameholes.dxf");
			}
 
		}

		
	//create tabs
	translate([0, 240, 0])
	cube([30, 10, 5], center = false);
	
	translate([0, 120, 0])
	cube([30, 10, 5], center = false);
	
	
	translate([0, 240, 35])
	cube([30, 10, 5], center = false);
	
	translate([0, 120, 35])
	cube([30, 10, 5], center = false);
	
	//put holes in tabs
	translate([8, 245, 0])
	cylinder(h = 70, r=2);

	translate([23, 245, 0])
	cylinder(h = 70, r=2);

	translate([8, 125, 0])
	cylinder(h = 70, r=2);

	translate([23, 125, 0])
	cylinder(h = 70, r=2);

	translate([3, 135, -4])
	cube([49, 100, 40], center = false);

	
	//dow rod
	translate([40, 265, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 250, r=4);

}



translate([15, -30, -40])
	cube([1, 140, 5], center = false);

	translate([0, -30, -40])
	cube([30, 10, 5], center = false);
	
	translate([0, 110,-40])
	cube([30, 10, 5], center = false);
}


//Build Frame one piece at a time!

middle_left();

