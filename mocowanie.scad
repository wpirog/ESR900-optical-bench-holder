pt = 0.1;
$fn = 1000;

module element_u() {
    A=8;
           
    module dziura() {
        union() {
            for (i=[1,-1]) {
                translate([0,i*25/2,0])
                c ylinder(r=6.5/2,h=50,center=true);
            }
            cube([6.5,25,50],center=true);
        }
    } 
    
    difference() {
        
        union() {

            
            translate([])
            rotate([])
            cube([45+A,50,A]);
            
            translate([A,0,0])
            rotate([0,-90,0])
            cube([25+A,50,A]);
        }
        
        //DZIURKI
        translate([32,25,0])
        rotate([0,0,90])
        dziura();
        
        translate([0,25,25])
        rotate([0,90,0])
        dziura();

        
    }
    
}

element_u();