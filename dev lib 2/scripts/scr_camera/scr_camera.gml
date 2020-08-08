/// @description scr_camera(follow_object,cam_distance_player_x,cam_speed,cam_pos_x,cam_pos_y,screen_width,screen_height);
/// @param follow_object
/// @param cam_distance_player_x
/// @param cam_speed
/// @param cam_pos_x
/// @param cam_pos_y
/// @param screen_width
/// @param screen_height

// varibles for the function
follow_object = argument[0];         // ObjectPlayer goes here                                   
cam_distance_player_x = argument[1]; // position of object_player on x-axis, 0 to be centered
cam_speed = argument[2]              // cam follow speed with player
cam_pos_x = argument[3]              // cam position x_axis set to 0.5 to have centered
cam_pos_y = argument[4]              // cam position y_axis set to 0.5 to have centered
screen_width = argument[5]           // cam view width
screen_height = argument [6]         // cam view height

cam = view_camera[0];            
view_w_half = camera_get_view_width(cam) * cam_pos_x;
view_y_half = camera_get_view_height(cam) * cam_pos_y;
x_to = xstart;
y_to = ystart;

// Camera view size
camera_set_view_size(cam, screen_width, screen_height);

// Update destination
if (instance_exists(follow_object)) {
	x_to = follow_object.x;
	y_to = follow_object.y;
}

// Update object position
x += (x_to - x + cam_distance_player_x) / cam_speed;
y += (y_to - y) / cam_speed;

// Edge of screen
x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_y_half, room_height-view_y_half);

// Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_y_half);
