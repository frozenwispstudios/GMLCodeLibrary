/// @description scr_gamepad_import(gamepad_device,deadzone);

/// @param gamepad_device
/// @param deadzone

gamepad_device = argument[0];
deadzone = argument[1]; 

//deadzone
gamepad_set_axis_deadzone(gamepad_device,deadzone);

//'A','B','X','Y' buttons
a_button = gamepad_button_check_pressed(gamepad_device,gp_face1);
b_button = gamepad_button_check_pressed(gamepad_device,gp_face2);
x_button = gamepad_button_check_pressed(gamepad_device,gp_face3);
y_button = gamepad_button_check_pressed(gamepad_device,gp_face4);

//start and select buttons
start_button = gamepad_button_check_pressed(gamepad_device,gp_start);
select_button = gamepad_button_check_pressed(gamepad_device,gp_select);;

//triggers and bumpers
left_bumper = gamepad_button_check_pressed(gamepad_device,gp_shoulderl);
right_bumper = gamepad_button_check_pressed(gamepad_device,gp_shoulderlb);
left_trigger = gamepad_button_check_pressed(gamepad_device,gp_shoulderr);
right_trigger = gamepad_button_check_pressed(gamepad_device,gp_shoulderrb);

//Dpad buttons
dpad_up = gamepad_button_check_pressed(gamepad_device,gp_padu);
dpad_right = gamepad_button_check_pressed(gamepad_device,gp_padr);
dpad_down = gamepad_button_check_pressed(gamepad_device,gp_padd);
dpad_left = gamepad_button_check_pressed(gamepad_device,gp_padl);

//stick axis
left_haxis = gamepad_axis_value(gamepad_device, gp_axislh);
left_vaxis = gamepad_axis_value(gamepad_device, gp_axislv);
right_haxis = gamepad_axis_value(gamepad_device, gp_axisrh);
right_vaxis = gamepad_axis_value(gamepad_device, gp_axisrv);

