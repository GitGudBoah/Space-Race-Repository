boss_fight_triggered = false;
player.incontrol = false;

//portrait
speaker = spr_com_alan;

//text
text = "Hey.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;
counter2 = 0;
canTrigger = true;

//create var
cx = player.x - 1575;
cy = player.y - 1125;
camera_set_view_target(view_camera[0], wounded_ship);
alarm[3] = room_speed * 1;
cam_to_player = 0;

boss_defeated = false;