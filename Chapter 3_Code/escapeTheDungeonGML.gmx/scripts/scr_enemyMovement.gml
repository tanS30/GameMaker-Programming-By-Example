axis = argument0;

//Walk Vertical

if (axis == "vertical") {
   if (my_speed == 2 && !already_set_start) {
      vspeed = 2;
      image_index = 0; 
   }
   
   else if (!already_set_start){
        vspeed = -2;
        image_index = 1;
   }
   
   already_set_start = true;
   
     if (collision_rectangle(x + 2, y + 2, x + 25, y + 54, obj_wall, false, false) != noone || collision_rectangle(x + 2, y + 2, x + 25, y + 54, obj_enemy, false, true) != noone || collision_rectangle(x + 2, y + 2, x + 25, y + 54, obj_PC, false, false) != noone) {
     if (vspeed == 2) {
         image_index = 1;
         vspeed *= -1;
      }
      
      else {
           image_index = 0;
           vspeed *= -1;
      }
   }
}

//Walk Horizontal

else {
   if (my_speed == 2 && !already_set_start) {
      hspeed = 2;
      image_index = 2; 
   }
   
   else if (!already_set_start){
        hspeed = -2;
        image_index = 3;
   }
   
   already_set_start = true;
   
     if (collision_rectangle(x + 2, y + 2, x + 25, y + 54, obj_wall, false, false) != noone || collision_rectangle(x + 2, y + 2, x + 25, y + 54, obj_enemy, false, true) != noone || collision_rectangle(x + 2, y + 2, x + 25, y + 54, obj_PC, false, false) != noone) {
      if (hspeed == 2) {
         image_index = 3;
         hspeed *= -1;
      }
      
      else {
           image_index = 2;
           hspeed *= -1;
      }
   }
   
}
