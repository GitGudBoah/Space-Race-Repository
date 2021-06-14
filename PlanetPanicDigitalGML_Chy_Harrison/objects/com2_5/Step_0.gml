//Crash site conversation

if counter = 1{
	speaker = spr_com_blank;
	text = "The ship lies at the end of a trail of severed trees and metal debris. Its pipes and circuits hiss and groan, but it holds onto life.";
}

if counter = 2{
	speaker = spr_com_blank;
	text = "Glaucus works hard at repairing the ship. Demeter sits beside Alan, who lies on the ground unconscious. She smiles as she speaks to someone on the radio.";
}

if counter = 3{
	speaker = spr_com_demeter;
	text = "Be strong, dear- I haven't given up on you. I'll be home soon.";
}

if counter = 4{
	speaker = spr_com_jay;
	text = "Who was that to? A lover?";
}

if counter = 5{
	speaker = spr_com_demeter;
	text = "*smiles proudly* It was to my son. He's a singer, though you couldn't tell by looking at him.";
}

if counter = 6{
	speaker = spr_com_glaucus;
	text = "I'd like to hear him one day.";
}

if counter = 7{
	speaker = spr_com_blank;
	text = "Alan rises from his slumber - coughing suddenly.";
}

if counter = 8{
	speaker = spr_com_alan;
	text = "...What? Where are we?";
}

if counter = 9{
	speaker = spr_com_glaucus;
	text = "We crashed onto the surface of a wooded planet.";
}

if counter = 10{
	speaker = spr_com_jay;
	text = "Demeter and I are about to explore a nearby settlement while Glaucus patches up the ship. You should get some rest, Alan.";
}

if counter = 11{
	speaker = spr_com_alan;
	text = "No need. *coughs and stumbles to feet* I'm coming with you.";
	alan.x = 3050;
	alan.sprite_index = alan_pistol;
}

if counter = 12{
	speaker = spr_com_blank;
	text = "Jay, Demeter, and Glaucus exchange glances.";
}

if counter = 13{
	speaker = spr_com_demeter;
	text = "I tested your blood after Glaucus said that you might be sick. It turns out, you're infected with a nasty virus.";
}

if counter = 14{
	speaker = spr_com_demeter;
	text = "Be honest, Alan. Are you dying?";
}

if counter = 15{
	speaker = spr_com_alan;
	text = "*grabs Demeter by her shirt* Damn it, Monroe! That's my business, not yours!";
}

if counter = 16{
	speaker = spr_com_jay;
	text = "*places hand on Alan's shoulder* Alan, calm down!";
}

if counter = 17{
	speaker = spr_com_demeter;
	text = "Our lives depend on each other. I won't risk dying over some simple privacy!";
}

if counter = 18{
	speaker = spr_com_glaucus;
	text = "We're a team... Isn't it our jobs to look out for each other?";
}

if counter = 19{
	speaker = spr_com_alan;
	text = "...";
}

if counter = 20{
	speaker = spr_com_alan;
	text = "*lets go of Demeter* Sorry...";
}

if counter = 21{
	speaker = spr_com_demeter;
	text = "*fixes shirt*";
}

if counter = 22{
	speaker = spr_com_alan;
	text = "My daughter became sick after touching a piece of that behemoth seven years ago. I caught a bit of it as well.";
}

if counter = 23{
	speaker = spr_com_alan;
	text = "I don't have much time left.";
}

if counter = 24{
	speaker = spr_com_jay;
	text = "Jesus, Alan...";
}

if counter = 25{
	speaker = spr_com_demeter;
	text = "That was crucial information. Now we know that we can't risk being touched by even a sliver of that monster.";
}

if counter = 26{
	speaker = spr_com_alan;
	text = "I kept it a secret so that we could keep working at our current speed. Our work will pay off soon, I promise.";
}

if counter = 27{
	speaker = spr_com_demeter;
	text = "This is our last mission together until you get this sorted out. How could you hide something like this?";
}

if counter = 28{
	speaker = spr_com_alan;
	text = "*grimaces painfully* ...I understand.";
}

if counter = 29{
	speaker = spr_com_jay;
	text = "Monroe. We should get going before it gets dark.";
}

if counter = 30{
	speaker = spr_com_demeter;
	text = "*heavy sigh* Okay. Lead the way.";
}

if counter = 31{
	talking = false;
	if canTrigger{
		canTrigger = false;
		jay2_2.incontrol = true;
		demeter.following = true;
		gagarin2_exit.available = true;
	}
}