/*
Adapter from Glide-Cam-3000 to Tascam pre-amp
*/

glidecam_pole_diameter = 25.4;
glidecam_pole_radius = glidecam_pole_diameter/2;
$fn = 100;
platform_diameter = 58;
platform_radius = platform_diameter/2;

slit_width = 2;
slit_height = 12;
tascam_width = 45.5;

cable_pipe_diameter = 4.5;
cable_pipe_radius = cable_pipe_diameter/2;

cable_diameter_tascam = 4.2;

difference() {
    union() {
        difference() {
            translate([0, 0, glidecam_pole_radius + 4]) {
                cylinder(h=8, d1=platform_diameter, d2=platform_diameter);
            };
            rotate([0, 0, -25]) {
                translate([
                    -50,
                    -tascam_width/2,
                    glidecam_pole_radius + 3 + 4])
                {
                    cube([100, tascam_width, 10]);
                }
            }
        }
        difference() {
            cylinder(
                h=glidecam_pole_radius + 4,
                r1=glidecam_pole_diameter/1.08,
                r2=platform_radius,
                center=false
            );
            /* glide-cam-pole */
            translate([-50, 0, +4]) {
                rotate([0, 90, 0]) {
                    cylinder(
                        h=100,
                        d1=glidecam_pole_diameter,
                        d2=glidecam_pole_diameter,
                        center=false);
                };
            };
            /* cable-pipe-hole */
            translate([-22, 14, 14.3]) {
                rotate([0, 90, 0]) {
                    cylinder(
                        h=100,
                        d1=cable_pipe_diameter,
                        d2=cable_pipe_diameter,
                        center=false);
                };
            };
            /* tascam-cable-clip */
            translate([-50, -27.0, 14.3]) {
                rotate([0, 90, 0]) {
                    cylinder(
                        h=100,
                        d1=cable_diameter_tascam,
                        d2=cable_diameter_tascam,
                        center=false);
                };
            };
        }
    }
    rotate([0,0,-25]) {
        translate([
            -slit_height/2,
            -slit_width/2 -platform_radius + 5.3,
            -50])
        {
            cube([slit_height, slit_width, 100]);
        }
    }
    rotate([0,0,-25]) {
        translate([
            -slit_height/2,
            -slit_width/2 +platform_radius - 5.3,
            -50])
        {
            cube([slit_height, slit_width, 100]);
        }
    }
}