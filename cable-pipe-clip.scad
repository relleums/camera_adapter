/*
cable-clips for cable-pipe
*/
$fn = 100;

cable_pipe_diameter = 4.25;
audio_cable_diameter = 3.0;

difference() {
    union() {
        translate([0, 0, 0]) {
             cylinder(h=10, r=cable_pipe_diameter, center=true);
        }
        translate([5, 0, 0]) {
            cylinder(h=10, r=audio_cable_diameter, center=true);
        }
    }
    translate([0, 0, 0]) {
         cylinder(h=12, r=cable_pipe_diameter/2, center=true);
    }
    translate([5, 0, 0]) {
         cylinder(h=12, r=audio_cable_diameter/2, center=true);
    }
    translate([10, 0, 0]) {
         cube([10, audio_cable_diameter/1.3, 12], center=true);
    }
    translate([-5, 0, 0]) {
         cube([10, .5, 12], center=true);
    }
    translate([9 ,0 ,0]) {
        rotate([0, 0, 45]) {
            cube([5, 5, 12], center=true);
        }
    }
}
