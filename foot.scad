
include <config.scad>;
use <monitor.scad>;


module angle() {
    color([0.5, 0.8, 0, 0.7]) {
        // Bottom half
        translate([
            -angle_width/2,
            0,
            0
            ])
        cube([
            angle_width,
            angle_lengthx,
            angle_thickness
            ]);

        // Upright half
        translate([
            -angle_width/2,
            0,
            0
            ])
        cube([
            angle_width,
            angle_thickness,
            angle_lengthy
            ]);
    }
}

module spacer() {
    color([0.5, 0.2, 0.7, 0.9])
    translate([
        -spacer_width/2,
        -spacer_thickness/2,
        0
        ])
    cube([
        spacer_width,
        spacer_thickness,
        spacer_height
        ]);
}

module foot() {
    color([0.1, 0.1, 0.8, 0.6]) {
        // Base plate
        translate([
            -foot_bottom_width/2,
            0,
            0
            ])
        cube([
            foot_bottom_width,
            foot_bottom_length,
            foot_bottom_height
            ]);

        // Angle encapsulator
        difference() {
            translate([
                -foot_anglecap_width/2,
                0,
                foot_bottom_height - nothing
                ])
            cube([
                foot_anglecap_width,
                foot_anglecap_length,
                foot_anglecap_height
                ]);

            // Insert angle here
            translate([
                - insertion_hole_width/2,
                - nothing,
                foot_bottom_height - nothing
                ])
            cube([
                insertion_hole_width,
                insertion_hole_length,
                foot_anglecap_height + nothing
                ]);

            // Pocket for the angle
            translate([
                - pocket_width/2,
                - nothing,
                foot_bottom_height - nothing
                ])
            cube([
                pocket_width,
                pocket_length,
                pocket_height
                ]);
        }
    }
}


for (a = [0:180:180]) {
    rotate(a) {
        translate([
            0,
            spacer_thickness/2 - nothing,
            foot_bottom_height + nothing
            ])
        angle();
        foot();
    }
}
translate([
    0,
    0,
    foot_bottom_height + nothing
    ])
spacer();
translate([0, 0, 35])
monitor_socket();
