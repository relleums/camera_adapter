/* Saramonic SmartRig to GLIDECAM HD-4000 */

$fn = 128;

glidecam_pole_diameter = 25.4;
glidecam_pole_radius = glidecam_pole_diameter/2;

cable_pipe_diameter = 4.5;
cable_pipe_radius = cable_pipe_diameter/2;

difference() {
    cylinder(r1=27.5, r2=20, h=19.5);
    translate([-50, 0, 15]) {
        rotate([0, 90, 0]) {
            cylinder(r=glidecam_pole_radius, h=100);
        }
    }
    translate([-9, -19., -3.5]) {
        cube([18., 38, 5]);
    }
    translate([-13, -28.5/2 - 3, -7]) {
        cube([26., 3., 10]);
    }
    translate([-13, 28.5/2, -7]) {
        cube([26., 3., 10]);
    }
    rotate([10, 0, 0]) {
        translate([0, 18, 10]) {
            cube([18., 2., 30], center=true);
        }
    }
    rotate([-10, 0, 0]) {
        translate([0, -18, 10]) {
            cube([18., 2., 30], center=true);
        }
    }
    translate([-14, 14, 5.5]) {
        rotate([0, 90, 0]) {
            cylinder(r=cable_pipe_radius, h=50);
        }
    }
    translate([-14, -14, 5.5]) {
        rotate([0, 90, 0]) {
            cylinder(r=cable_pipe_radius, h=50);
        }
    }
}