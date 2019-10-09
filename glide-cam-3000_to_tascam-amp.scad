/*
Adapter from Glide-Cam-3000 to Tascam pre-amp
*/

D_glidecam = 25.4;
$fn = 100;
D_out = 58;
slit_width = 2;
slit_height = 12;
tascam_width = 45.5;

difference() {
    union() {
        difference() {
            translate([0,0,D_glidecam/2+4]) {
                cylinder(h=8, d1=D_out, d2=D_out);
            };
            rotate([0,0,-25]) {
                translate([-50,-tascam_width/2,D_glidecam/2 + 3 + 4]) {
                    cube([100,tascam_width,10]);
                }
            }
        }
        difference() {
            cylinder(h=D_glidecam/2+4, r1=D_glidecam/1.6, r2=D_out/2, center=false);
            translate([-50,0,+4]) {
                rotate([0,90,0]) {
                    cylinder(h=100, d1=D_glidecam, d2=D_glidecam, center=false);
                };
            };
        }
    }
    rotate([0,0,-25]) {
        translate([-slit_height/2, -slit_width/2 -D_out/2 + 5.3, -50]) {
            cube([slit_height, slit_width, 100]);
        }
    }
    rotate([0,0,-25]) {
        translate([-slit_height/2, -slit_width/2 +D_out/2 - 5.3, -50]) {
            cube([slit_height, slit_width, 100]);
        }
    }
}