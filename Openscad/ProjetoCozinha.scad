//base parede
color("#e15b40"){ translate([0,-4,0]) cube([188,4,250]);} 

//pedra pia
color("#7b7b7b"){ translate([23,-64,81]) cube([165,60,4]);}
color("#7b7b7b"){ translate([83,-46, 70]) cube([45,30,15]);}

//topo armarios debaixo da pia
color("#5a2c00"){ translate([0,-64,78]) cube([188,60,3]);}

//base armarios debaixo da pia
color("#5a2c00"){ translate([0,-64,10]) cube([78,60,3]);}
color("#5a2c00"){ translate([133,-64,10]) cube([55,60,3]);}

//divisórias verticais
color("#87501d"){ translate([186,-64,78]) rotate([0,90,0]) cube([65,60,2]);}
color("#87501d"){ translate([133,-64,78]) rotate([0,90,0]) cube([65,60,2]);}
color("#87501d"){ translate([76,-64,78]) rotate([0,90,0]) cube([65,60,2]);}
color("#87501d"){ translate([21,-64,78]) rotate([0,90,0]) cube([65,60,2]);}
color("#87501d"){ translate([0,-64,78]) rotate([0,90,0]) cube([65,60,2]);}

//divisórias gaveteiros
color("#a56527"){ translate([135,-64,65]) cube([51,60,2]);}
color("#a56527"){ translate([135,-64,52]) cube([51,60,2]);}
color("#a56527"){ translate([2,-64,45]) cube([19,60,2]);}

//bancada embaixo
color("#b96f27"){ translate([0,-206,81]) cube([23,202,4]);}


//bancada em cima
difference(){
   color("#b96f27"){ translate([-9,-206,107.5]) cube([32,202,4]);}
    translate([-9,-59.5,107.5]) cube([9,55.5,4]);
    
}


