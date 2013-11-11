//use <text.scad>
//include <OpenScadFont.scad>
use <write.scad>

//translate([0,30,0])

module lower_left()
{

difference() {

	union(){

		intersection() {
		
			translate([0, 0, 0])
			cube([120, 120, 20], center = false);

 			difference() {
			 	linear_extrude(height = 20) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 30) import("frameholes.dxf");
				//linear_extrude(height = 5) import("logo.dxf");
			}
		}
		translate([120, 5, 0])
				cube([10, 30, 5], center = false);
		translate([0, 120, 0])
				cube([30, 10, 5], center = false);
	}

	//put holes through the wings
	translate([125, 11, 0])
	cylinder(h = 20, r=2);

	translate([125, 26, 0])
	cylinder(h = 20, r=2);

	translate([8, 125, 0])
	cylinder(h = 20, r=2);

	translate([23, 125, 0])
	cylinder(h = 20, r=2);

	//hollow out part for easy printing
	translate([5, 7, -2])
	cube([45, 70, 20], center = false);

    translate([5, 5, -2])
	cube([21, 70, 20], center = false);

    translate([45, 4, -2])
	cube([21, 40, 20], center = false);

	translate([5, 85, -2])
	cube([45, 30, 20], center = false);

	translate([35, 7, -2])
	cube([45, 30, 20], center = false);

    //put dow rod through parts
	translate([40, 125, 10])
	rotate(90, [1, 0, 0])
	cylinder(h = 50, r=4);

	translate([40, 30, 25])
	write("Prusa I3",t=10.5,h=10,center=true);translate([20,30,0]);

	}
}


module lower_center()
{
//asd	

translate([0, 5, 5])

//this flips model over for printing
//rotate(180, [1, 0, 0]) 
	difference() {
		intersection() {
		
		translate([120, 0, 0])
			cube([130, 130, 10], center = false);

 		difference() {
			linear_extrude(height = 20) import("new3.dxf");
			translate([0, 0, -5])
			linear_extrude(height = 30) import("frameholes.dxf");
			translate([120, 5, 0])
				cube([10, 30, 5], center = false);
			translate([240, 5, 0])
				cube([10, 30, 5], center = false);
		}
 
	}

	translate([245, 11, 0])
	cylinder(h = 20, r=2);

	translate([245, 26, 0])
	cylinder(h = 20, r=2);

	translate([125, 11, 0])
	cylinder(h = 20, r=2);

	translate([125, 26, 0])
	cylinder(h = 20, r=2);
	}
}


module lower_right()
{
	difference() {
		union(){
			intersection() {
			
				translate([250, 0, 0])
				cube([120, 120, 10], center = false);

				difference() {
					linear_extrude(height = 10) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 30) import("frameholes.dxf");
				}
	 
			}

			translate([240, 5, 0])
			cube([10, 30, 5], center = false);
			translate([340, 120, 0])
			cube([30, 10, 5], center = false);


		}

		translate([245, 11, 0])
		cylinder(h = 20, r=2);

		translate([245, 26, 0])
		cylinder(h = 20, r=2);

		translate([348, 125, 0])
		cylinder(h = 20, r=2);

		translate([363, 125, 0])
		cylinder(h = 20, r=2);

	}
}






module middle_right()
{
translate([0, 0, -20])
difference() {
	 
		intersection() {
		
			translate([250, 120, 0])
				cube([120, 130, 10], center = false);

 			difference() {
			 	linear_extrude(height = 10) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 30) import("frameholes.dxf");
			}
 
		}

	translate([340, 240, 0])
	cube([30, 10, 5], center = false);
	
	translate([340, 120, 0])
	cube([30, 10, 5], center = false);

	translate([348, 245, 0])
	cylinder(h = 20, r=2);

	translate([363, 245, 0])
	cylinder(h = 20, r=2);

	translate([348, 125, 0])
	cylinder(h = 20, r=2);

	translate([363, 125, 0])
	cylinder(h = 20, r=2);

}
}







module top_right()
{
	difference() {
		union(){
			intersection() {
			
				translate([250, 250, 0])
					cube([120, 120, 10], center = false);

				difference() {
					linear_extrude(height = 10) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 30) import("frameholes.dxf");
				}
	 
			}

			translate([340, 240, 0])
					cube([30, 10, 5], center = false);
			translate([240, 340, 0])
					cube([10, 30, 5], center = false);


		}

		translate([348, 245, 0])
		cylinder(h = 20, r=2);

		translate([363, 245, 0])
		cylinder(h = 20, r=2);

			translate([245, 350, 0])
		cylinder(h = 20, r=2);

		translate([245, 365, 0])
		cylinder(h = 20, r=2);

	}
}




module top_center()
{
//asd	
  translate([0, 5, 25])
//rotate(180, [1, 0, 0])
	difference() {
		intersection() {
		
		translate([120, 330, 0])
			cube([130, 130, 10], center = false);

 		difference() {
			linear_extrude(height = 10) import("new3.dxf");
			translate([0, 0, -5])
			linear_extrude(height = 30) import("frameholes.dxf");
			translate([120, 340, 0])
				cube([10, 30, 5], center = false);
			translate([240, 340, 0])
				cube([10, 30, 5], center = false);
		}
 
	}

	translate([245, 350, 0])
	cylinder(h = 20, r=2);

	translate([245, 365, 0])
	cylinder(h = 20, r=2);
    
    translate([125, 350, 0])
	cylinder(h = 20, r=2);

	translate([125, 365, 0])
	cylinder(h = 20, r=2);
	}
}



module top_left()
{
	//translate([0, -230, 0])
	difference() {
		union(){
			intersection() {
			
				translate([0, 250, 0])
					cube([120, 120, 20], center = false);

				difference() {
					linear_extrude(height = 20) import("new3.dxf");
					translate([0, 0, -5])
					linear_extrude(height = 30) import("frameholes.dxf");
				}
	 
			}

			translate([0, 240, 0])
					cube([30, 10, 5], center = false);
			translate([120, 340, 0])
					cube([10, 30, 5], center = false);


		}

		translate([125, 350, 0])
		cylinder(h = 20, r=2);

		translate([125, 365, 0])
		cylinder(h = 20, r=2);

		translate([8, 245, 0])
		cylinder(h = 20, r=2);

		translate([23, 245, 0])
		cylinder(h = 20, r=2);
	 
		translate([5, 265, 5])
		cube([45, 100, 15], center = false);
	 
		translate([45, 335, 5])
		cube([65, 30, 15], center = false);

		translate([40, 285, 15])
		rotate(90, [1, 0, 0])
		cylinder(h = 250, r=4);
	 
	}
}



module middle_left()
{
//translate([0, 0, -25])
difference() {
	 
		intersection() {
		
			translate([0, 120, 0])
				cube([120, 130, 20], center = false);

 			difference() {
			 	linear_extrude(height = 20) import("new3.dxf");
				translate([0, 0, -5])
				linear_extrude(height = 30) import("frameholes.dxf");
			}
 
		}

	translate([0, 240, 0])
	cube([30, 10, 5], center = false);
	
	translate([0, 120, 0])
	cube([30, 10, 5], center = false);

	translate([8, 245, 0])
	cylinder(h = 20, r=2);

	translate([23, 245, 0])
	cylinder(h = 20, r=2);

	translate([8, 125, 0])
	cylinder(h = 20, r=2);

	translate([23, 125, 0])
	cylinder(h = 20, r=2);

	translate([5, 135, 5])
	cube([45, 105, 15], center = false);

	translate([40, 265, 15])
	rotate(90, [1, 0, 0])
	cylinder(h = 250, r=4);

}
}


//Build Frame one piece at a time!

lower_left();
//lower_center();
//lower_right();
//middle_right();
//top_right();
//top_center();
//top_left();
//middle_left();

