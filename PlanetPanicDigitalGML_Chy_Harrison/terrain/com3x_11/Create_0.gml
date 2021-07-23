//portrait
speaker = spr_com_glaucus;

//text
text = "Hey.";
boxWidth = sprite_get_width(spr_textbox);
stringHeight = string_height(text);

talking = false;
counter = 0;
alarm[0] = room_speed * 2;

canTrigger = true;
canTrigger2 = true;

//change bg sprite
lay_id = layer_get_id("Background");
back_id = layer_background_get_id(lay_id);

audio_sound_gain(placeholder_music9, 0, 2000);

//decision
decision = false;
choice = false;