//Crash site conversation

if counter = 1{
	speaker = spr_com_blank;
	text = "The ship lies at the end of a trail of severed trees and metal debris. Its pipes and circuits hiss and groan, but it holds onto life.";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "Glaucus works hard at repairing the ship. Demeter sits beside Alan, who lies on the ground unconscious. She sighs as she speaks to someone on the radio.";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "I haven't forgotten about him, but I have my own problems as well... Yes, I know that you love me.";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "A lover's quarrel, I presume?";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "Oof- that was to my nagging old dad... He doesn't think I want to find my older brother now that he's gone missing.";
}

if counter = 6{
	speaker = spr_com_demeter;
	text = "Of course I want to find him... I just wish my old man cared about me half as much.";
}

if counter = 7{
	speaker = spr_com_glaucus;
	text = "If it helps, my creator told me that she never loved me. Several times, in fact.";
}

if counter = 8{
	speaker = spr_com_blank;
	text = "Alan rises from his slumber - coughing suddenly.";
}

if counter = 9{
	speaker = spr_com_alan;
	text = "...What? Where are we?";
}

if counter = 10{
	speaker = spr_com_glaucus;
	text = "We crashed onto the surface of a wooded planet.";
}

if counter = 11{
	speaker = spr_com_jay;
	text = "Demeter and I are about to explore a nearby settlement while Glaucus patches up the ship. You should get some rest, Alan.";
}

if counter = 12{
	speaker = spr_com_alan;
	text = "No need. *coughs and stumbles to feet* I'm coming with you.";
	alan.x = 3050;
	alan.sprite_index = alan_pistol;
}

if counter = 13{
	speaker = spr_com_blank;
	text = "Jay, Demeter, and Glaucus exchange glances.";
}

if counter = 14{
	speaker = spr_com_demeter;
	text = "I tested your blood after Glaucus said that you might be sick. It turns out, you're infected with a nasty virus.";
}

if counter = 15{
	speaker = spr_com_demeter;
	text = "Be honest, Alan. Are you dying?";
}

if counter = 16{
	speaker = spr_com_alan;
	text = "*grabs Demeter by her shirt* Damn it, Monroe! That's none of your goddamn business!";
}

if counter = 17{
	speaker = spr_com_jay;
	text = "*places hand on Alan's shoulder* Alan, calm down!";
}

if counter = 18{
	speaker = spr_com_demeter;
	text = "Our lives depend on each other. I won't risk dying over some simple privacy!";
}

if counter = 19{
	speaker = spr_com_glaucus;
	text = "We're a team, Alan. Think- isn't it our jobs to look out for each other?";
}

if counter = 20{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 21{
	speaker = spr_com_alan;
	text = "*lets go of Demeter* Sorry... Damnit!";
}

if counter = 22{
	speaker = spr_com_demeter;
	text = "*fixes shirt*";
}

if counter = 23{
	speaker = spr_com_alan;
	text = "My daughter became sick after she touched a piece of that behemoth seven years ago. I caught a bit of it as well.";
}

if counter = 24{
	speaker = spr_com_alan;
	text = "I don't have much time left.";
}

if counter = 25{
	speaker = spr_com_jay;
	text = "Jesus, Alan...";
}

if counter = 26{
	speaker = spr_com_demeter;
	text = "I had a feeling that monster was Nalthuraas. It's closer to Attis than they make it seem- so it seems none of us have much time left.";
}

if counter = 27{
	speaker = spr_com_alan;
	text = "I kept it a secret so that we could keep working at our current speed. Our work will pay off soon, I promise.";
}

if counter = 28{
	speaker = spr_com_demeter;
	text = "And you knew that no one would want to work alongside a ticking time bomb. This is our last mission together until you get this sorted out.";
}

if counter = 29{
	speaker = spr_com_alan;
	text = "*grimaces painfully* ...I understand.";
}

if counter = 30{
	speaker = spr_com_jay;
	text = "Monroe. We should get going before it gets dark.";
}

if counter = 31{
	speaker = spr_com_demeter;
	text = "*heavy sigh* Okay. Lead the way.";
}

if counter = 32{
	talking = false;
	if canTrigger{
		canTrigger = false;
		jay2_2.incontrol = true;
		demeter.following = true;
		gagarin2_exit.available = true;
	}
}