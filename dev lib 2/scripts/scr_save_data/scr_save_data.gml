/// @description scr_save_ini(save_file_name, save_section, save_key, save_value, real/string(boolean));

/// @param save_file_name
/// @param save_section
/// @param save_key
/// @param save_value
/// @param real_string

//set arugments
save_file_name = argument[0];
save_section = argument[1];
save_key = argument[2];
save_value = argument[3];
real_string = argument[4];

if file_exists(working_directory + save_file_name + ".ini"){
    file_delete(working_directory + save_file_name + ".ini")
}

//open, write, close
ini_open(working_directory + save_file_name + ".ini");
if real_string {return ini_write_real(save_section,save_key,save_value);} //load reals/intergers (True)
else{return ini_write_string(save_section,save_key,save_value);} //load string (False)
ini_close();

//where data is saved below
//C:\Users\HOME1\AppData\Local\save_loading