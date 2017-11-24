/*
Rounded-corner six-sided dice with round concave numbers; showing '0' instead of '1'
by Curial Orrit - 2017 - no rights reserved
*/

mida=8;
textsize=mida*1.5;
lafont= "FreeSerif";
resolu=25;

difference() {
    translate([mida, mida, mida])
    intersection() {
        cube(mida*2, center=true);
        sphere(d=mida*3, $fn=100);
    }
    
    // 0
    translate([mida, mida, mida*2])
    minkowski() {
        linear_extrude(height=0.01) {
            text("0", size=textsize, halign="center", valign="center", font=lafont);}
        sphere(r=1.0, $fn=resolu);
    }
    
    // 2
    translate([mida*2, mida, mida])
    rotate([0,90,0])
    minkowski() {
        linear_extrude(height=0.01) {
            text("2", size=textsize, halign="center", valign="center", font=lafont);}
        sphere(r=1.0, $fn=resolu);
    }
    
    // 4
    translate([mida, mida, 0])
    rotate([0,180,0])
    minkowski() {
        linear_extrude(height=0.01) {
            text("4", size=textsize, halign="center", valign="center", font=lafont);}
        sphere(r=1.0, $fn=resolu);
    }
    
    // 3
    translate([0, mida, mida])
    rotate([0,-90,0])
    minkowski() {
        linear_extrude(height=0.01) {
            text("3", size=textsize, halign="center", valign="center", font=lafont);}
        sphere(r=1.0, $fn=resolu);
    }

    // 5
    translate([mida, 0, mida])
    rotate([90,0,0])
    minkowski() {
        linear_extrude(height=0.01) {
            text("5", size=textsize, halign="center", valign="center", font=lafont);}
        sphere(r=1.0, $fn=resolu);
    }

    // 6
    translate([mida, mida*2, mida])
    rotate([-90,0,0])
    minkowski() {
        linear_extrude(height=0.01) {
            text("6", size=textsize, halign="center", valign="center", font=lafont);}
        sphere(r=1.0, $fn=resolu);
    }
}
