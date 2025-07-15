module kriostat (r = 137/2, h=59) {
    $fn=500;
    translate([0,0,137/2])
    union(){
        rotate([90,0,0])
        cylinder(r=r, h=h, center=true);

        cylinder(r=r*0.3, h=300);
            
        rotate([0,50,0]) 
        union() {
            cylinder(r=r*0.2, h=800);
            translate([0,0,400])
            cube([r,r,300], center=true);
        };    
                
        rotate([0,-45,0])
        ylinder(r=r*0.2, h=150);
            
        rotate([0,-90,0])
        cylinder(r=r*0.2, h=150);
        }
}
module podstawka () {
    
    difference() {
        wysokosc_bazy=55;
        //baza
        difference(){
            translate([0,0,wysokosc_bazy/2])
            cube([150,79,wysokosc_bazy],center=true);
            cube([301,10,200],center=true);
               
            //kriostat
            
            translate([0,0,5])
            kriostat();
                
            //dziurki    
            for (i=[1,-1]){
                translate([i*60,0,25])
                rotate([90,0,0])
                cylinder(r=6.5/2, h=100, center=true, $fn=100);
            }
        }
        
    }
   
}

translate([0,0,5])
//#kriostat();
podstawka();
