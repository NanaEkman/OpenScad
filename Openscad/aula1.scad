altura = 30;

difference(){
//translate([40,0,0])
cube([20,10,altura],false);

translate([0,8,0])
rotate([90, 0 ,0])
cylinder(h=20, r=15, $fn=6);
}