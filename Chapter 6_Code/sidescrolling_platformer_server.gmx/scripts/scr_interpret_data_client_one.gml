var ip = argument0;
var socket = argument1;
var buff = argument2;

var player_one_x = buffer_read(buffer, buffer_u16);
var player_one_y = buffer_read(buffer, buffer_u16);

var send_to_client_two_buff = buffer_create(2048, buffer_fixed, 2);

buffer_write(send_to_client_two_buff, buffer_u16, player_one_x);
buffer_write(send_to_client_two_buff, buffer_u16, player_one_y);

buffer_delete(send_to_client_two_buff);
