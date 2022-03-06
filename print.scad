
include <config.scad>;
use <foot.scad>;


spacer();

translate([
    0,
    spacer_thickness,
    foot_bottom_length
    ])
rotate([-90, 0, 0])
foot();

translate([
    0,
    spacer_thickness + foot_height + 5,
    foot_bottom_length
    ])
rotate([-90, 0, 0])
foot();
