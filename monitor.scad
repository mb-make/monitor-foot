
include <config.scad>;

module monitor_socket() {
    color([1, 1, 1, 0.6]) {
        difference() {
            // Block incl. walls
            wx_outer = monitor_socket_widthx + monitor_socket_thickness;
            wy_outer = monitor_socket_widthy + monitor_socket_thickness;
            translate([
                -wx_outer/2,
                -wy_outer/2,
                0
                ])
            cube([
                wx_outer,
                wy_outer,
                monitor_socket_height + monitor_socket_thickness
                ]);

            // Hole
            translate([
                -monitor_socket_widthx/2,
                -monitor_socket_widthx/2,
                -nothing
                ])
            cube([
                monitor_socket_widthx,
                monitor_socket_widthy,
                monitor_socket_height,
                ]);
        }
    }
}

monitor_socket();
