/// @description scr_hex_to_rgb($hex_value)
/// @param $hex_value

var hex, decimal, range, position;

hex = string_upper(argument[0]);
decimal = 0;
range = "0123456789ABCDEF";
for (position = 1; position <= string_length(hex); position += 1) {
    decimal = decimal << 4 | (string_pos(string_char_at(hex, position), range)-1);
}

return (decimal & 16711680) >> 16 | (decimal & 65280) | (decimal & 255) << 16;