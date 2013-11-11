use <write.scad>
module middle_right()
{

rotate(180, [1, 0, 0])
translate([-330, -250, -40])
	  union(){
difference() {
	
		intersection() {
		
			translate([250, 120, 0])
				cube([120, 130, 40], center = false);

 			difference() {
			 	linear_extrude(height = 40) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 50) import("frameholes.dxf");
			}
 
		}

	translate([340, 240, 0])
	cube([30, 10, 5], center = false);
	
	translate([340, 120, 0])
	cube([30, 10, 5], center = false);

	translate([340, 240, 35])
	cube([30, 10, 5], center = false);
	
	translate([340, 120, 35])
	cube([30, 10, 5], center = false);
	
	translate([348, 245, 0])
	cylinder(h = 70, r=2);

	translate([363, 245, 0])
	cylinder(h = 70, r=2);

	translate([348, 125, 0])
	cylinder(h = 70, r=2);

	translate([363, 125, 0])
	cylinder(h = 70, r=2);


	translate([318, 135, -4])
	cube([49, 100, 40], center = false);

	
	//hollow out piece
	translate([335, 265, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 250, r=4);


}
	translate([340, 249, 35])
	cube([30, 10, 5], center = false);
	
	translate([340, 111, 35])
	cube([30, 10, 5], center = false);



}
}



 

//Build Frame one piece at a time!

middle_right();
  

