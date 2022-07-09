pcs=30;//numero de pcs q formarao o casco
esp=3/4;//espessura final do casco
p=25.4;//polegada
H=5;//altura do casco em polegadas
f=10;//numero de furos nos aros
pH=2;//tamanho do parafuso em polegadas



module pizza(radius, pcs) {
    a = 360 / pcs;
    x = radius * cos(a / 2);
    y = radius * sin(a / 2);
    polygon(points=[[0, 0], [x, y],[x, -y]]);
}


module taco(dia, H, esp, pcs) {


    for(i = [0 : pcs - 1]) {

        translate([0,0,-(H*p/2)]) difference() {
                linear_extrude(H*p)pizza(dia/2*p+5, pcs);
                translate([0,0,-0.5])linear_extrude(H*p+1)pizza(dia/2*p-esp*p , pcs-0.1);

        }
    }
}


module casco(dia){
    difference(){
    intersection()
    {
    for(n = [1 : pcs])
    {
        rotate([0, 0, n*360/pcs])
    taco(dia, H, esp, pcs);
    }
    cylinder(d=(dia-1/8)*p, h=H*p, center=true,$fn=100);
}
cylinder(d=(dia-1/8)*p-2*esp*p, h=H*p+1, center=true,$fn=100);

}
}
module aro(dia){
    dia_in=dia;
    module aro_cima(){
    translate([0,0,H/2*p])difference(){
        #cylinder(d=(dia_in+3.5/2)*p, h=13/16*p, center=true,$fn=100);
        cylinder(d=(dia_in)*p, h=13/16*p+1, center=true,$fn=100);
        translate ([0,0,-13/32*p+1/8*p])cylinder(d=(dia+5/8)*p, h=1/4*p, center=true,$fn=100);
        //////////furacao///////
        for(i = [1 : f])
{
    rotate([0, 0, i*360/f])
    {
        translate([(dia+1)/2*p,0,2/8*p])
        cylinder(d=1/2*p,h=3/8*p,center=true);
         translate([(dia+1)/2*p,0,2/8*p])
        cylinder(d=1/4*p,h=2*p,center=true);
    }
}

translate([0,0,3/8*p])difference(){
    cylinder(d=(dia_in+3/2)*p, h=1/2*p, center=true,$fn=100);
    cylinder(d=(dia+8/8)*p, h=4/4*p, center=true,$fn=100);}



        }
    }
        aro_cima();
    mirror([0,0,1])aro_cima();
    
  ////////////////////////////canoas//////////////////////////////////////////////
       module canoas (f){        
        for(i = [1 : f])
{
    translate([0,0,H/2*p-pH*p])rotate([0, 0, i*360/f])
    {
        translate([0,(dia+1/4)/2*p,2/8*p])rotate([90,0,0])
        cylinder(d=3/4*p,h=3/8*p,center=true);
        
       difference(){
        translate([(dia+1)/2*p,0,1/8*p])rotate([0,90,0])
       color("yellow") cylinder(d=3/8*p,h=3/8*p,center=true);
           translate([(dia+1)/2*p,0,1/8*p])rotate([0,0,0])
       color("blue") cylinder(d=7/32*p,h=3/4*p,center=true);
       }
           
    }
    
}

}
//canoas(f);
//mirror([0,0,1])canoas(f);
   }
//casco(13);
    aro(14);
  //  aro(14);
  //  taco(14, H, esp, pcs);