player.incontrol = false;
player.speed = 0;
var inst = instance_create_depth(0, 0, -999, fader);
inst.destination_room = Victory;
audio_sound_gain(placeholder_music_intro, 0, 2000);