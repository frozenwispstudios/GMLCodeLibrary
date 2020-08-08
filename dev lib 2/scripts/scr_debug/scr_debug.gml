/// @description scr_debug();
//restart game
if keyboard_check(ord("R")){	
	game_restart();
}

//Quit game
if keyboard_check(vk_escape){
	game_end();	
}