
// Render options
$fn = 500;
nothing = 0.01;

// Monitor parameters
monitor_width = 0;
monitor_height = 0;
monitor_thickness = 0;
monitor_socket_widthx = 22;
monitor_socket_widthy = 21.5;
monitor_socket_height = 90;
monitor_socket_thickness = 1;

// Metal support
angle_lengthx = 120;
angle_lengthy = 120;
angle_width = 20;
angle_thickness = 5;

// Foot parameters
foot_bottom_height = 4;

// Spacer
spacer_width = monitor_socket_widthx - 0.5;
spacer_height = angle_lengthy;
spacer_thickness = monitor_socket_widthy - 2*angle_thickness - 2*0.5;

// More foot parameters
foot_anglecap_thickness = 4;
foot_anglecap_width = angle_width + 2*foot_anglecap_thickness;
foot_anglecap_height = angle_thickness + foot_anglecap_thickness;
foot_anglecap_length = spacer_thickness/2 + angle_lengthx + foot_anglecap_thickness;
foot_bottom_width = 80;
foot_bottom_length = foot_anglecap_thickness + angle_lengthx + spacer_thickness/2;
foot_height = foot_bottom_height + foot_anglecap_height;

// Where to insert the angle into the foot
insertion_hole_width = angle_width + 0.5;
insertion_hole_length = angle_thickness + spacer_thickness/2 + 0.5;
pocket_width = angle_width + 0.5;
pocket_height = angle_thickness + 0.5;
pocket_length = foot_bottom_length - foot_anglecap_thickness + 0.5;
