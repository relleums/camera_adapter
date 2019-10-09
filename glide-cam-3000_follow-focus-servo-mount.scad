/*
Servo-motor-mount for follow-focus
*/

L = 35;
pitch = 19;
Ro = 15;
Ri = 12;
$fn =100;
difference() {
    difference() {
        union() {
            cube(size=[L,60,5], center=false );
            translate(v=[0,0,4]) {
                cube(size=[L,30,12.5], center=false );
            }
            translate(v=[0,Ri+3,Ri+5]) {
                rotate(a = [0,90,0]) {
                    cylinder(h=L, r1=Ro, r2=Ro, center=false);
                }
            } 
        }
        translate(v=[-1,Ri+3,Ri+5]) {
            rotate(a = [0,90,0]) {
                cylinder(h=L+2, r1=Ri, r2=Ri, center=false);
            }
        } 
    }
    translate(v=[-2,11.5+3,-1]) {
        cube(size=[L+4,1,10], center=false );
    }
    translate(v=[7.5,37.5,-1]) {
        rotate(a = [0,0,0]) {
            cylinder(h=7, r1=2.5, r2=2.5, center=false);
        }
    }
    translate(v=[7.5+pitch,37.5,-1]) {
        rotate(a = [0,0,0]) {
            cylinder(h=7, r1=2.5, r2=2.5, center=false);
        }
    }

    translate(v=[7.5,52.5,-1]) {
        rotate(a = [0,0,0]) {
            cylinder(h=7, r1=2.5, r2=2.5, center=false);
        }
    }
    translate(v=[7.5+pitch,52.5,-1]) {
        rotate(a = [0,0,0]) {
            cylinder(h=7, r1=2.5, r2=2.5, center=false);
        }
    }
    translate(v=[5,37.5,-1]) {
        cube(size=[5,15,7], center=false );
    }
    translate(v=[5+pitch,37.5,-1]) {
        cube(size=[5,15,7], center=false );
    }
    translate(v=[L/2,60+1,2.5]) {
        rotate(a = [90,0,0]) {
            cylinder(h=100, r1=1.7, r2=1.7, center=false);
        }
    }
    translate(v=[L/2,3,2.5]) {
        rotate(a = [90,0,0]) {
            cylinder(h=6, r1=3.2, r2=3.2, center=false);
        }
    }
    translate(v=[L/2 -3.5,30.5,-1]) {
        cube(size=[7,5,7], center=false );
    }
}