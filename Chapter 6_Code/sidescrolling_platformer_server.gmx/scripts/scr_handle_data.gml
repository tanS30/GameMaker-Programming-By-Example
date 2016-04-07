var buff = argument0;
var client_to_send_to = argument1;

buffer_seek(buff, buffer_seek_start, 0);
            
var player_x = buffer_read(buff, buffer_f32);
var player_y = buffer_read(buff, buffer_f32);
            
var player_sprite = buffer_read(buff, buffer_f32);
var player_subimage = buffer_read(buff, buffer_f32);
var player_xscale = buffer_read(buff, buffer_f32);
                
buffer_seek(data_to_send_buff, buffer_seek_start, 0);
                
buffer_write(data_to_send_buff, buffer_f32, player_x);
buffer_write(data_to_send_buff, buffer_f32, player_y);
            
buffer_write(data_to_send_buff, buffer_f32, player_sprite);
buffer_write(data_to_send_buff, buffer_f32, player_subimage);
buffer_write(data_to_send_buff, buffer_f32, player_xscale);
                
network_send_packet(sockets[client_to_send_to], data_to_send_buff, buffer_tell(data_to_send_buff));
