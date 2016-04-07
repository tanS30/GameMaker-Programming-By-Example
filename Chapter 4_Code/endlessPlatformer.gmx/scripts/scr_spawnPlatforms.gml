if (collision_rectangle(0, 0, 512, 75, all, false, false) == noone) {
   switch(irandom_range(1, 3)) {
                           case 1:
                               var a = array_height_2d(global.pattern_one) - 1;
                               var last_obj_spawned = instance_create(global.pattern_one[a,1], 0, global.pattern_one[a,0]);
                               --a;
                               while (a > -1) {
                                   if (global.pattern_one[a,0] == obj_enemy)  //if an enemy is about to be spawned rather than a platform - must spawn it directly above platform
                                      instance_create(global.pattern_one[a,1], last_obj_spawned.y - 12, obj_enemy);
                                      
                                   else { //platform is about to be spawned - can spawn it anywhere within range
                                        var spawn_dist = irandom_range(50, 80);
                                        last_obj_spawned = instance_create(global.pattern_one[a,1], last_obj_spawned.y - spawn_dist, global.pattern_one[a,0]);
                                   }
                               --a;
                               }
                           break;

                           case 2:
                               var a = array_height_2d(global.pattern_two) - 1;
                                   var last_obj_spawned = instance_create(global.pattern_two[a,1], 0, global.pattern_two[a,0]);
                                   --a;
                                   while (a > -1) {
                                       if (global.pattern_two[a,0] == obj_enemy)  //if an enemy is about to be spawned rather than a platform - must spawn it directly above platform
                                          instance_create(global.pattern_two[a,1], last_obj_spawned.y - 12, obj_enemy);
                                       
                                       else { //platform is about to be spawned - can spawn it anywhere within range
                                            var spawn_dist = irandom_range(50, 80);
                                            last_obj_spawned = instance_create(global.pattern_two[a,1], last_obj_spawned.y - spawn_dist, global.pattern_two[a,0]);
                                       }
                                   --a;
                                   }
                           break;
                           
                           case 3:
                               var a = array_height_2d(global.pattern_three) - 1;
                                   var last_obj_spawned = instance_create(global.pattern_three[a,1], 0, global.pattern_three[a,0]);
                                   --a;
                                   while (a > -1) {
                                       if (global.pattern_three[a,0] == obj_enemy)  //if an enemy is about to be spawned rather than a platform - must spawn it directly above platform
                                          instance_create(global.pattern_three[a,1], last_obj_spawned.y - 12, obj_enemy);
                                       
                                       else { //platform is about to be spawned - can spawn it anywhere within range
                                            var spawn_dist = irandom_range(50, 80);
                                            last_obj_spawned = instance_create(global.pattern_three[a,1], last_obj_spawned.y - spawn_dist, global.pattern_three[a,0]);
                                       }
                                   --a;
                                   }
                           break;
   }
}