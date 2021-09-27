//portrait
speaker = spr_com_glaucus;

//text
text = "The sonar is picking up several attack ships. There are hostiles hiding in the nearby dust clouds.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;

//player moves into the room
//alarm[0] = room_speed * 2;
player_entering = true;
player.incontrol = false;
player.visible = false;