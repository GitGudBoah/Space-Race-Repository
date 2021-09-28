if counter = 1{
	speaker = spr_com_alan;
	text = "Mankind should be working together against a shared enemy, not tearing itself apart!";
}

if counter = 2{
	speaker = spr_com_alan;
	text = "Wish I could go back in time and tell my younger self that fighting for all of mankind was never truly an option...";
}

//hologram room
if counter = 3{
	counter = 4;
	instance_create_layer(0, 0, "Instances", intro_panel2);
	instance_destroy(intro_panel1);
}

if counter = 4{
	speaker = spr_com_alan;
	text = "Kandar and The United Pirate Fleets' repetitive assaults have left Attis vulnerable--";
}

if counter = 5{
	speaker = spr_com_alan;
	text = "and The Coalition is so hell-bent on hunting Ralaxia and torturing her pirates that they don't even notice us.";
}

if counter = 6{
	speaker = spr_com_rhea;
	text = "I have a job for you, then. Your last moon mining mission was a success, yes?";
}

if counter = 7{
	speaker = spr_com_rhea;
	text = "I need you to sail to Garinoka and bring me your last haul of moon minerals. In exchange for supplies to keep Attis safe.";
}

if counter = 8{
	speaker = spr_com_rhea;
	text = "And regardless, you may still be able live out your childhood dream of being a hero. The space-eating organism, Nalthuraas, has grown to our side of the galaxy.";
}

if counter = 9{
	speaker = spr_com_rhea;
	text = "Soon, we'll have something far worse to worry about than The United Pirate Fleet.";
}

//alan brief
if counter = 10{
	counter = 11;
	talking = false;
	instance_create_depth(0, 0, -1, intro_panel3);
	instance_create_depth(0, -1500, -4, intro_panel4);
}

if counter = 11{
	speaker = spr_com_alan;
	text = "A trade run as my last good deed for humanity? *chuckle* Maybe I have finally lost my edge.";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "I'll take the job, Rhea. I haven't forgotten your contributions to Attis and humanity as a whole; I respect you, even if your inventions are sometimes concerning in nature.";
}

//rhea brief
if counter = 13{
	counter = 14;
	talking = false;
	instance_create_depth(-1050, 0, -2, intro_panel6);
}

if counter = 14{
	speaker = spr_com_rhea;
	text = "Alan, know this. The centuries-long war between The Coalition and The United Pirate Fleet is reaching yet another climax-- the state of space is rapidly changing.";
}

if counter = 15{
	speaker = spr_com_rhea;
	text = "You'll need to worry about surviving first, then you can worry about doing what's right or wrong.";
}

if counter = 16{
	speaker = spr_com_rhea;
	text = "I want my package to arrive in good condition, sure, but I also believe that despite your previous efforts for humanity, your most important work has yet to come.";
}

if counter = 17{
	speaker = spr_com_rhea;
	text = "I'm counting on you, officer.";
}

if counter = 18{
	speaker = spr_com_alan;
	text = "I should call the crew over for briefing, then. They better not already be drunk.";
}

//call up crew
if counter = 19{
	counter = 20;
	talking = false;
	instance_destroy(intro_panel7);
	instance_destroy(intro_panel6);
	instance_destroy(intro_panel5);
	instance_destroy(intro_panel4);
	instance_create_depth(0, 0, -2, intro_panel8);
}

if counter = 20{
	speaker = spr_com_alan;
	text = "DEMETER, JAY, AND GLAUCUS REPORT TO THE HOLOGRAM ROOM.";
}

if counter = 21{
	speaker = spr_com_alan;
	text = "We're setting a course for Garinoka. Demeter, damnit! Sober up!";
}

//Demeter introduction
if counter = 22{
	counter = 23;
	instance_create_depth(0, 0, -3, intro_panel9);
}

if counter = 23{
	speaker = spr_com_alan;
	text = "You're our researcher and database.";
}

if counter = 24{
	speaker = spr_com_demeter;
	text = "I'll need you to get us close to Nalthuraas so that I can observe it properly. I'll be damned if another researcher finds out its secrets before me!";
}

if counter = 25{
	speaker = spr_com_alan;
	text = "Absolutely not. You have a deathwish.";
}

if counter = 26{
	speaker = spr_com_demeter;
	text = "Fair enough. As always, I'll keep you all informed about whatever beasts or men try to kill us.";
}

//Jay introduction
if counter = 27{
	counter = 28;
	talking = false;
	intro_panel9.fade = true;
}

if counter = 28{
	speaker = spr_com_alan;
	text = "Jay, you're our defense. Try not to go overboard this time, alright?";
}

if counter = 29{
	speaker = spr_com_jay;
	text = "Right. What would you all do without me?";
}

if counter = 30{
	speaker = spr_com_alan;
	text = "Watch it, kiddo. I was fighting pirates and space aliens when you were in diapers.";
}

if counter = 31{
	speaker = spr_com_jay;
	text = "I know you don't like to get your hands dirty. Don't worry, Alan, just leave the pirate scum to me.";
}

//Glaucus introduction
if counter = 32{
	counter = 33;
	talking = false;
	intro_panel10.fade = true;
}

if counter = 33{
	speaker = spr_com_alan;
	text = "Glaucus, you're our mechanic and co-pilot.";
}

if counter = 34{
	speaker = spr_com_glaucus;
	text = "I'm honored to lend you three a hand. I'll keep the ship sailing through bullets or asteroid showers.";
}

if counter = 35{
	speaker = spr_com_alan;
	text = "The honor is mine. Attis would have already fallen apart by now if it weren't for your skills.";
}

//view the map
if counter = 36{
	counter = 37;
	talking = false;
	instance_create_layer(0, 0, "Instances", intro_panel12);
	instance_destroy(intro_panel11);
	instance_destroy(intro_panel8);
	instance_destroy(intro_panel3);
	instance_destroy(intro_panel2);
}

if counter = 37{
	speaker = spr_com_alan;
	text = "The best route to Garinoka will fly like this.";
}

//Attis
if counter = 38{
	counter = 39;
	instance_create_depth(0, 0, -1, intro_panel13);
}

if counter = 39{
	speaker = spr_com_glaucus;
	text = "There's home.";
}

if counter = 40{
	speaker = spr_com_demeter;
	text = "It's too small! We should start voting people off.";
}

if counter = 41{
	speaker = spr_com_jay;
	text = "We've got a sociopath among us...";
}

//Nalthuraas Rift
if counter = 42{
	counter = 43;
	instance_create_depth(0, 0, -2, intro_panel14);
}

if counter = 43{
	speaker = spr_com_alan;
	text = "That black hole wasn't there the last time I checked.";
}

//Forest Planet
if counter = 44{
	counter = 45;
	instance_create_depth(0, 0, -3, intro_panel15);
}

if counter = 45{
	speaker = spr_com_demeter;
	text = "[insert cool name here]: The site of a failed terraforming operation. No one has been there since a battle with Ralaxia made it inhospitable.";
}

//Ship Graveyard
if counter = 46{
	counter = 47;
	instance_create_depth(0, 0, -4, intro_panel16);
}

if counter = 47{
	speaker = spr_com_glaucus;
	text = "[insert cool name here]: One of Tartau's moons. It is a graveyard of starships.";
}

//Tartau
if counter = 48{
	counter = 49;
	instance_create_depth(0, 0, -5, intro_panel17);
}

if counter = 49{
	speaker = spr_com_jay;
	text = "Tartau: The home planet of Ralaxia and The United Pirate Fleet.";
}

//Garinoka
if counter = 50{
	counter = 51;
	instance_create_depth(0, 0, -6, intro_panel18);
}

if counter = 51{
	speaker = spr_com_rhea;
	text = "Garinoka: One of the most powerful planets within the galaxy, its continent-sized cities are a hub for trade and exchange of knowledge between different species and cultures.";
}

if counter = 52{
	speaker = spr_com_alan;
	text = "There's our destination.";
}

if counter = 53{
	speaker = spr_com_alan;
	text = "I hope you're in for a bumpy ride everyone! LET'S SET SAIL!";
}

//titlecard
if counter = 54{
	counter = 55;
	talking = false;
	var inst = instance_create_depth(0, 0, -999, fader);
	inst.destination_room = intro_title;
	audio_sound_gain(placeholder_music11, 0, 2000);
}