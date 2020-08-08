/// @description scr_load_ini(load_file_name, load_section, load_key, string/real(boolean));

/// @param load_file_name
/// @param load_section
/// @param load_key
/// @param real_string

//set arugments
load_file_name = argument[0];
load_section = argument[1];
load_key = argument[2];
real_string = argument[3];

//open, write, close
ini_open(working_directory + load_file_name + ".ini");
if real_string {return ini_read_real(load_section,load_key,"");} //load reals/intergers
else{return ini_read_string(load_section,load_key,"");} //load string
ini_close();

