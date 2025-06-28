if language = "eng"
{////
// Dialogue debug summon
// Later create a library of all books for ease of use and take the books from there
// Then make sure every collection of books remember its readed book variable
// OR
// Have all dialogue books baked into interactable objects

// Possibly combine some parts into a function or script

// If not in dialogue give the current book to dialogue box to read
////
debug_library =
	{
	//Name of the dialogue library part
	test:	// Array with all books inside
			[
			// Book 0; Consecutive lines read one after another
			["Dialogue box","Debug time!_scr:scr_dialogue_debug_switch;"],
			
			// Book 1; Lines read one after another then an array of choices and what they
			// lead to. ["CHOICE TEXT", "$go_to_this_part$to_this_book"]
			["_face:spr_sans_dialogue_test;Much to test","Choose what to ", 
			[["Multiple lines","$choice_one$0"],
			["Cycles","$choice_two$1"],// This choice leads to choice_two book 2
			["Exit"]]]
			],
			
	choice_one: 
			[	
				// \n - new line, same as ENTER on keyboard
				["Hooman\nI rmember","your GENOSITEDS \n ...GENODUSTS \n\n\n ...GENODATES", "$test$1"]
			],
	choice_two:
			[
				["WDGASTER???"],
				["1", "$choice_two$2"], // Choice two leads to this one
				["2", "$choice_two$3"],
				["3", [["Again","$choice_two$1"],["Exit","$test$1"]]],
			],
	choice_three: 
			[	
				// \n - new line, same as ENTER on keyboard
				["txt_speed:0.5;I speak normally! \ntxt_speed:1;But I can do it much faster \nthen you think!", "txt_speed:0.25;Or slower... txt_speed:0.15;Much slower......txt_speed:0.5;", "$test$1"]
			],
	
	}
// Library for tests
test_library =
	{
	test:
			[
			["Oh, hi there!_pause:30; \nIt's nice to see you in our little Underground._pause:15; \nWe're still in the middle of development so it may look a bit unfinished... _pause:15;","You can't fight or create battles yet, but we're trying to do our best to make it possible.","For now, feel free to explore _color:65535;RUINS_color:16777215; and _color:65535;SNOWDIN_color:16777215; _pause:30; \nMeanwhile, I'll get back to work..."],
			["Yeah,_pause:10; my work is not all about standing out there.","But hey..._pause:30; Somebody has to be here in case you need anything..._pause:15; When you leave this room, I'll get to doing something else..."],
			["By the way, you need anything?_pause:15; No?_pause:10; Have fun then!"],
			["Hey, you wanna know when the next update comes out? _pause:25;\nHell if i know! But there are a lot of ways how you can participate. ","Like, by testing everything we have here and telling us about errors you meet. _pause:10; \nOr you can suggest to add something to the Underground.","Or join our team if you are an artist, programmer, musician, game designer...","Well, we accept literally anyone who would like to participate"],
			["I'm busy..._pause:10; Come back later, would you?"],
			["_skip:0;_shaking:0.5;_face:spr_toby_dog;txt_speed:0.25;You fool._pause:30; You have no idea of what's coming."]
			
			]
	}
smol_objects_library =
		{
			sign_base:
			[
			["It is a sign."] 
			],
			
			sign1:
			[
			["That's a sign N1. And it got a lot to say.",
			"txt_speed:0.8;_skip:3;Proin eget risus tempor tortor condimentum blandit. Nunc a leo sit amet dui sollicitudin egestas eget vitae sem. Fusce sit amet molestie",
			"Ut elit est, auctor eget bibendum quis, volutpat ut metus. Quisque mollis augue eget dictum fermentum. Ut eget nibh at dolor luctus",
			"Sed congue mi vitae nulla sagittis, eget eleifend dolor mattis. Nullam eget lacus leo. Mauris mollis quis augue eget aliquam.",
			"Etiam tempus, sem et congue facilisis, nunc erat tincidunt neque, quis egestas massa. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Suspendisse potenti.",
			"_skip:2;Got it?_pause:30;\n-Got it."]
			],
			
			sign2:
			[
			["That's a sign N2txt_speed:0.1;...txt_speed:0.5;_color:255; Something_color:16777215; is not right about it..."]
			],
			
			sign3:
			[
			["That's a sign N3......","_wavingx:0.5,30,0.2;_wavingy:1,120,0.25;DETERMINATIOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOON","_wavingx:0,0,0;_wavingy:0,0,0;..."]
			],
			
			save_base:
			[
			["In current version of the game you cannot save.","The feeling of high stakes fills you with determination."] 
			],
			
			tem_base:
			[
			["HOi!!1 _pause:25;iM tEM"]
			],
			
			candy_pillar:
			[
			["These candies look like they are placed just for you to take them.","There is no inventory system in the game right now, so you can't do that._pause:20; But what stops you from just eating them right away?"],
			["Eat one candy?",
			[["Yes","$candy_pillar_eat$0"],["No","$candy_pillar_no$0"]]
			]
			],
			
			candy_pillar_fake:
			[
			["These candies look like they are placed just for you to take them.","There is no inventory system in the game right now, so you can't do that._pause:20; But what stops you from just eating them right away?"],
			["Eat one candy?",
			[["Yes","$candy_pillar_stop$0"],["No","$candy_pillar_no$0"]]
			]
			],
			
			candy_pillar_eat:
			[
			["_scr:scr_eat_monstercandy;_wavingx:0.5,30,0.25;_wavingy:1,120,0.275;txt_speed:0.2;Delicious."]
			],
			
			candy_pillar_no:
			[
			["It's not yours after all."]
			],
			
			candy_pillar_stop:
			[
			["Some indescribable force stopped you from doing this..."]
			],
			
			froggit_base:
			[
			["Ribbit,_pause:20; ribbit._pause:45; How to fight you? _pause:45;\nI don't get it."]
			],
			
			vegetoid_base:
			[
			["Plants can't talk dummy"]
			],
			
			froggit_entrance:
			[
			["Welcome to the Underground._pause:45; \nRibbit,_pause:20; ribbit."]
			],
			
			interact_base:
			[
			["There is nothing to look at."]
			],
			
			middle_road_puzzle:
			[
			["Only the fearless may proceed. _pause:15; \nBrave ones, foolish ones. _pause:15; \nBoth walk not the middle road."]
			],
			
			sign_spikes:
			[
			["The western room is the eastern room's blueprint.","(There is a paragraph of bad handwriting about how easy this puzzle is and how useless those spikes are.)"]
			],
			
			froggit_spike_room:
			[
			["Ribbit,_pause:20; ribbit._pause:35; \n(You haven't killed anyone yet._pause:30; You must be a very moral person.) ","Ribbit,_pause:20; ribbit._pause:30; \n(I appreciate what you're doing._pause:30; I had no idea humans can overcome their inner bloodthirst.)"]
			],
			
			froggit_welcomer:
			[
			["Ribbit,_pause:20; ribbit._pause:25; \n(Hello Human. New To The Underground?)",
			[["Yes","$froggit_welcomer_yes$0"],["No","$froggit_welcomer_no$0"]]],
			["Ribbit,_pause:20; Ribbit._pause:20; \n(Have fun)"]
			],
			
			froggit_welcomer_yes:
			[
			["Ribbit,_pause:20; ribbit._pause:25; \n(Well, I Hope You Have A Great Time.)"]
			],
			
			froggit_welcomer_no:
			[
			["R...,_pause:30; ribbit?_pause:25; \n(U-Um... Well, I Hope You Have A Great Time...)"]
			],
			
			froggit_long_room1:
			[
			["Ribbit!_pause:15; Ribbit!_pause:20; \n(Hello Human! I was waiting for you to come by our race track!)","(Do You Want To Hear About The Rules?)",
			[["Yes","$froggit_long_room1_rules$0"],["No","$froggit_long_room1_rules_refuse$0"]]]
			],
			
			froggit_long_room1_rules:
			[
			["Ribbit,_pause:10; ribbit._pause:15; \n(The rules are simple:_pause:20; Whoever Goes To The Other Side Faster,_pause:10; They Win A Prize)","(You are playing against me, I'm the fastest racer in this room!)","(First ride is free.) _pause:15;\n(You want to give it a shot?)",
			[["Yes","$froggit_long_room1_start_race$1"],["No"]]]
			],
			
			froggit_long_room1_rules_refuse:
			[
			["Ribbit?_pause:20; (Really?)","Ribbit,_pause:10; ribbit!_pause:10; \n(Our race is actually pretty cool! Come back anytime, I'll be waiting here!)","(And, sometimes, on the other side of the room)"],
			],
			
			froggit_long_room1_start_race:
			[
			["Ribbit,_pause:10; ribbit?_pause:15; \n(Start a race?)",
			[["Yes","$froggit_long_room1_start_race$2"],["No"]]],
			["Ribbit..._pause:50; Ribbit....._pause:45; Ribbit!_pause:40;_scr:scr_long_room_race_start;txt_speed:1; \n(Ready, set, go!)"],
			["Ribbit,_pause:10; ribbit._pause:20 \nYou don't have money at all? Well, me too, I never understand why people worry about this so much, we don't even have a single working shop right now."],
			],
			
			froggit_long_room1_race_started:
			[
			["Ribbit,_pause:10; ribbit._pause:15; \n(Don't worry about me, I'm giving you a head start!)"],
			["Ribbit,_pause:10; ribbit._pause:15; \n(I'll get going right now, just give me a moment!)"]
			],
			
			froggit_long_room1_race_stopped:
			[
			["Ribbit,_pause:10; ribbit!_pause:15; \n(That was a disappointment last time, but don't worry, you can try again any time!)"],
			["Ribbit,_pause:10; ribbit?_pause:15; \n(Start a race?)",
			[["Yes","$froggit_long_room1_start_race$1"],["No"]]],
			],
			
			froggit_long_room2:
			[
			["Ribbit..._pause:20; ribbit..._pause:25; \n(Hey, if you want to start a race, talk to my brother... He is on the other side of this room)","(I don't know the rules, honestly...)"],
			["Ribbit,_pause:20; ribbit..._pause:25; \n(Wait... _pause:25;Forget anything I said about my brother...","If you want to start a race... _pause:20;Talk to me...)"],
			["Ribbit,_pause:20; ribbit..._pause:25; \n(Yeah... _pause:20;To me... _pause:15; But on the other side of this room...)"]
			],
			
			froggit_long_room2_race_end:
			[
			["Ribbit,_pause:20; ribbit._pause:25; \n(Woah... that was exciting... _pause:20; but as you see... I came first...)","(Yeah, I guess you didn't even notice that...)","(As I said... I think I'm the fastest racer in the Underground. _pause:35; Or... _pause:15; In ruins...)","(I don't remember what exactly was I supposed to say about it...)"],
			["Ribbit,_pause:20; ribbit._pause:25; \n(Oh, you want to try again..._pause:20; Sorry, I need to take some rest before a new race... _pause:20;Running got me so tired...)"],
			["Ribbit,_pause:20; ribbit._pause:25; \n(I guess the only way for me to restore power is by running to the other side of this room...)"],
			],
			
			froggit_long_room2_race_stopped:
			[
			["Ribbit,_pause:20; ribbit._pause:25; \n(You've gone wrong way last time... _pause:15; It's okay...)","I decided to run anyway... _pause:15;That's why I'm here"],
			],
			
			froggit_long_room3:
			[
			["Ribbit,_pause:20; ribbit._pause:25; \n(No, I haven't ever seen more than two froggits in this room, that would be impossible)"]
			],
			
			sign_long_room1:
			[
			["SPECIAL RACE TRACK"]
			],
			
			sign_long_room2:
			[
			["<- Winner's place"]
			],
			
			vegetoid_long_room:
			[
			["Are You Winning Son"]
			],
			
			froggit_creepy_friend:
			[
			["Ribbit_pause:15; Ribbit._pause:25; \n(I've Seen A Human Like You Before But Way Creepier...)","(Are You Their Friend Or Something?)"],
			],
			
			froggit_goal:
			[
			["Ribbit_pause:15; Ribbit._pause:25; \n(It's Been A While Since I've Seen One Of You Humans In The Underground.)","(What's Your Humans Goal Anyway...?)",
			[["To Know What Happens Next.","$froggit_goal_destroy$0"],["To Explore","$froggit_goal_explore$0"],["Flirt","$froggit_goal_flirt$0"]]],
			["Ribbit_pause:15;, ribbit_pause:20;. \n(I have nothing to add.)"],
			],
			
			froggit_goal_explore:
			[
			["Ribbit_pause:15; Ribbit._pause:25; \n(Well, I Hope You Reach Your Goal One Day.)","(I Myself Like Exploring, But I Am Just A Regular Froggit...) \n(I Can't Really Go To Places Like Hotland Or Snowdin, It's Too Hot Or Cold For Me...)","Ribbit_pause:15; Ribbit._pause:25; \n(I Use Elevators Or Use A Boat To Go To Some Places Like New Home.)","(I don't know About Humans Like You Though.) \n(You Need To Be A Strong Human To Get Through Those Places All By Yourself.)"]
			],
			
			froggit_goal_destroy:
			[
			["Ribbit_pause:15; Ribbit._pause:25; \n(I Thought That Skeleton With A Dark Hoodie On Were Lying To Me...)","(...)","(Please Show Some Mercy At Least Human...) _pause:25;\n(I Know You Humans Might Need To Know What Happens Next No Matter What...)","(But Atleast Show Some Mercy In The Way Of Knowing What Happens Next.)","Ribbit."]
			],
			
			froggit_goal_flirt:
			[
			["Ri..._pause:15; Ribbit?_pause:25; \n(WHAT)","(I mean... I Hope You Reach Your Goal...)_pause:45; \n(I GUESS)","Ribbit... _pause:30; Ribbit... _pause:30;\n(Ribbit, Ribbit...)"]
			],
			
			sign_switches_room:
			[
			["Stay on the path."]
			],
			
			pointed_arrows1:
			[
			["There are seven yellow lines drawn on the wall."]
			],
			
			pointed_arrows2:
			[
			["There are six yellow lines drawn on the wall.","And there is a small sentence written under it:_pause:30;\nHaha! Now you won't be able to solve it, filthy human!"]
			],
			
			sign_rock_room1:
			[
			["Rock has been freed and is now wandering around ruins somewhere."]
			],
			
			rock_free:
			[
			["...\n_pause:45;And finally..._pause:25; My journey is over."]
			],
			
			sign_floor_fix:
			[
			["We fixed the broken floor. Now you can no longer fall through it here!_pause:40; \nUPD: Just be careful not to step on those teleporters we placed instead of them."]
			],
			
			brothers_froggit:
			[
			["I'm Adopted"]
			],
			
			brothers_froogit:
			[
			["Ribbit, _pause:20;Ribbit. _pause:25;\n(Hi, I'm froogit, and these are my brothers, froggit and frogitt!)"]
			],
			
			brothers_frogitt:
			[
			["Ribbit, _pause:20;Ribbit. _pause:25;\n(Hi, I'm frogitt, and these are my brothers, froggit and froogit!)"]
			],
			
			sign_rocks_room:
			[
			["Don not disturb rocks please."]
			],
			
			vegetoid_outa_here:
			[
			["I'm Outa Here _pause:15;_scr:scr_outa_here;"]
			],
			
			sign_leaves_room:
			[
			["Didn't you read the sign downstairs?"]
			],
			
			vegetoid_fake_leaves:
			[
			["Bottom Left Corner Leaves Are Fake"],
			["Must Be Salamy"]
			],
			
			sign_leaves_warning:
			[
			["Please don't step on the leaves."]
			],
			
			cheese_table_ruins:
			[
			["Cheese emits some threatening energy._pause:30; You feel like touching it won't bring anything good.","Touch it?",
			[["Touch cheese","$touch_cheese_ruins$0"],["Don't touch cheese","$dont_touch_cheese_ruins$0"]]],
			["This is a nightmare!"]
			],
			
			touch_cheese_ruins:
			[
			["You touch the cheesetxt_speed:0.05;..._pause:30;txt_speed:0.25; \nIt feels like the most uncomfortable action in your life...txt_speed:0.5;","_scr:scr_cheese_mouse_chaos;..!_pause:40; \nSuddenly!"]
			],
			
			dont_touch_cheese_ruins:
			[
			["You feel like you made a right choise"]
			],
			
			three_points:
			[
			["..."]
			],
			
			rock_go_to_hell:
			[
			["_scr:scr_rock_go_to_hell;Go to hell."]
			],
			
			rock_shocked:
			[
			["DAMMIT MAAAN DATS INSAAAANE"]
			],
			
			sign_ruins_spider_bakery:
			[
			["CLOSED"]
			],
			
			sign_ruins_spider_bakery2:
			[
			["Spiders are currently learning how to sell their bakery."]
			],
			
			buy_smol_cobweb:
			[
			["It's just a spider web."]
			],
			
			buy_big_cobweb:
			[
			["It's just a spider web."]
			],
			
			napstablook_ruins1:
			[
			["(Oh..._pause:20; I must be blocking the way again...)","(But if I try to move away they'll think I've noticed them and yet didn't move before..._pause:20; It's better if they continue to think I'm sleeping...)"],
			["(They just stepped through me...)"]
			],
			
			froggit_froggits_room1:
			[
			["Ribbit,_pause:15; Ribbit._pause:20; \n(You've heard about the battle creation system, didn't you.)","(Would you like to create battles?)",
			[["Yes","$froggit_froggits_room1_yes$0"],["No","$froggit_froggits_room1_no$0"]]],
			["Ribbit,_pause:15; Ribbit._pause:10; \n(Don't create a battle with me please)"]
			],
			
			froggit_froggits_room1_yes:
			[
			["Ribbit,_pause:10; Ribbit._pause:15; \n(I'd like to do that too,_pause:15; but I'm just a regular froggit...)","(But at least I don't have to wait for an update to come out...)"]
			],
			
			froggit_froggits_room1_no:
			[
			["Ribbit,_pause:10; Ribbit._pause:15; \n(That's good for you, you won't get your life tied by eternal waiting.)"]
			],
			
			froggit_froggits_room2:
			[
			["Ribbit,_pause:15; Ribbit._pause:20; \n(Tell me if you meet a fourth frog in this room, it's important.)"]
			],
			
			froggit_froggits_room3:
			[
			["Ribbit,_pause:15; Ribbit._pause:20; \n(I used to have something to say, now I spare myself the pain)"]
			],
			
			sign_broken_floor_room:
			[
			["There is just one switch."]
			],
			
			froggit_about_switch:
			[
			["Ribbit,_pause:15; Ribbit._pause:20; \n(I've heard about the second switch in this room. And I've heard that not even gods dare to press it.)"]
			],
			
			froggit_wrong_switch:
			[
			["txt_speed:0.15;_skip:0;_color:255;You p_shaking:3;r_shaking:0;essed the w_shaking:3;r_shaking:0;ong _shaking:4;s_shaking:0;witch"]
			],
			
			sign_switches_room1:
			[
			["Puzzle bureau informs:_pause:15; \nSwitches are now playing the role of decorative elements.","_color:65535;Pressing all of them_color:16777215; in turn won't do anything."]
			],
			
			sign_switches_room2:
			[
			["Like, seriously, who would even try to _color:65535;press all of them_color:16777215; one by one?_pause:15; \nIt doesn't even make sence."]
			],
			
			sign_switches_room3:
			[
			["So yeah, _color:65535;pressing every single switch_color:16777215; in these rooms is totally a waste of time."]
			],
			
			sign_switches_room4:
			[
			["Oh, and by the way, all people who try to do something similar to _color:65535;pressing all colored switches in previous rooms_color:16777215; are totally out of their mind and should receive help."]
			],
			
			loox_switches:
			[
			["You, little switch-pressing offbeat-reading-signs scoundrel!_pause:20; I will stop you from setting all switches in these rooms to on!","Although you might have pressed every single one of them, _pause:20;I disabled one of the switches!","Your evil plans are over!"]
			],
			
			ruins_switch:
			[
			["Press the switch?",[["Press","$ruins_switch_pressed$0"],["Don't press"]]]
			],
			
			ruins_switch_pressed:
			[
			["_skip:3;_scr:scr_ruins_switch_pressed;"]
			],
			
			ruins_switch_already_pressed:
			[
			["Switch is on already."]
			],
			
			ruins_switch_last:
			[
			["Press the switch?",[["Press","$ruins_switch_pressed_last$0"],["Don't press"]]]
			],
			
			ruins_switch_pressed_last:
			[
			["_skip:3;_scr:scr_ruins_switch_pressed_last;"]
			],
			
			loox_switches_are_pressed:
			[
			["Oh._pause:30; You just pressed it again.","Well, I guess you won, what do you want?",[["Glory","$loox_switches_are_pressed_glory$0"],["Money","$loox_switches_are_pressed_money$0"],["You","$loox_switches_are_pressed_you$0"]]],
			["I can see through you."]
			],
			
			loox_switches_are_pressed_glory:
			[
			["Obviously,_pause:10; now you'll bathe in rays of your popularity, _pause:15;you'll gather crowds of fans,_pause:15; you'll write memouirs...","You'll be the hero of everyone,_pause:15; you'll be known and respected,_pause:20; but tell me...","At what cost?"]
			],
			
			loox_switches_are_pressed_money:
			[
			["Oh, of course._pause:15; Money._pause:15; \nSure, now you can sell your switch performance, now you can buy yourself a frock.","Sure, now you can sell your sign knowledge, now you can buy yourself an edgy rock. _pause:25; But tell me...","At what cost?"]
			],
			
			loox_switches_are_pressed_you:
			[
			["Wait, so you did this for me?","Really?","Wow,_pause:10; thank you!_pause:15; Actually_pause:5; nobody ever did so much just to piss me off! Still, what you did is unacceptable."]
			],
			
			mouse_switch_warning:
			[
			["You know, there are some switches that you should never press."]
			],
			
			sign_ruins_rm25_1:
			[
			["I _color:255;LOVE_color:16777215; RUINS!"]
			],
			
			sign_ruins_rm25_2:
			[
			["feels like something is wrong."]
			],
			
			sign_ruins_rm25_3:
			[
			["txt_speed:0.08;B e h i n d  y o u"]
			],
			
			sign_ruins_rm25_4:
			[
			["Start placing signs._pause:15; Become one of us _pause:10;:)"]
			],
			
			froggit_ruins_rm25:
			[
			["Ribbit,_pause:20; Ribbit._pause:25; \n(When lights are out, some strange people come here and place these signs.)","(I don't know how to read..._pause:20; For some reason, it makes me feel relieved.)"]
			],
			
			ruins_city_dialogue:
			[
			["txt_speed:0.75;..._pause:20; You feel different._pause:15; Yet,_pause:10; that doesn't make you better.","In my experience,_pause:10; nobody could explain who they are._pause:15; So tell me,","What are you?",[["Human","$ruins_city_dialogue_human$0"],["Monster","$ruins_city_dialogue_monster$0"],["Something different","$ruins_city_dialogue_nobody$0"]]],
			["txt_speed:0.75;In the end,_pause:15; it doesn't matter who do you consider yourself to be._pause:20; So do your actions not matter.","Changes will come later,_pause:20; Or maybe they won't._pause:15; Just don't get used to waiting too much.","Or you will face something horrific."],
			["txt_speed:0.75;I'm talking about the most horrifying thing I ever felt.","...",[["Sin"],["Dark"],["Power"]]],
			["txt_speed:0.75;Haha... _pause:20;Hey,_pause:15; thank you for this adorable dialogue._pause:20; It's a shame we'll never be able to be.","Did I really deserve all this suffering?","txt_speed:0.5;(You felt something, _pause:25;that is very difficult to describe,_pause:15; rising outside of you.)","(You should come back to this place later.)"],
			["There is nothing here but a city view."]
			],
			
			ruins_city_dialogue_human:
			[
			["txt_speed:0.75;Do you really believe in what you're saying?_pause:20; Isn't it just funny:_pause:10; Human,_pause:5; one of the most powerful creatures in the world,_pause:20;","Strong enough to defeat every livilng monster,_pause:20; just wandering around pointlessly? What kind of human are you?","Huh,_pause:15; don't take my words as something serious.","I'm no different than you."]
			],
			
			ruins_city_dialogue_monster:
			[
			["txt_speed:0.75;You are floating between being correct and incorrect._pause:20; You are a monster,_pause:15; and your soul shines bright red.","But that soul can't find peace,_pause:15; not in this empty world for sure._pause:15; You need to add something to it, don't you?"]
			],
			
			ruins_city_dialogue_nobody:
			[
			["txt_speed:0.75;Huh._pause:15; You tend to be different where nobody is the same.","There isn't much I can say about it._pause:20; At least,_pause:10; for the time I was,_pause:15; I've said this too many times."]
			],
			
			tem_silly1:
			[
			["HOi_pause:10; iM TEM!1","THaTs aur TEM pLEic"]
			],
			
			tem_silly2:
			[
			["Hoi,_pause:5; I'm Tem._pause:20; And I respect our Tem culture."]
			],
			
			tem_silly3:
			[
			["hOI!!!!_pause:20; iM DOnT knOW WoTEMai DOINn!!1!1"]
			],
			
			froggit_tem_room:
			[
			["RIBet,_pause:10; RIBet_pause:15; \n(aIM lern WERYWERYWERY bAd FiNKs FROM)","(iM HoI Ba tHE wEI)"]
			],
		}

dummy_cutscene =
{
	ignoring:
	[
	["txt_speed:0.066;...","txt_speed:0.5;It's just a dummy."],
	["It is, right..?"],
	["You keep looking at it."],
	["..."],
	["!_pause:30; Suddenly, _pause:15;\nIt starts to..._pause:25; Actually, nevermind, must be just wind."],
	["..."],
	["Beat it?_pause:60; \nWell, no. _pause:15; Combat is not implemented yet._scr:scr_dummy_activate_triggers;"],
	["You feel like you have something better to do."],
	["what?_pause:20; What?_pause:20; WHAT?!!","...","_shaking:1.25;YOU WILL REGRET THIS"]
	],
	
	what_what_what:
	[
	["what..?_shaking:0.25;_pause:20; What?_shaking:1;_pause:20; WHAT!?","How dare you?!","I haven't ever seen anyone so _shaking:3;txt_speed:0.125;STUUUUUPID_shaking:1;txt_speed:0.5; to interupt ME STANDING THERE","You tried to interact me like 7 times!!!!! _pause:30;\n_shaking:2;AND FAILED!!!_shaking:1;","_shaking:2;WHAT THE HELL IS WRONG WITH YOU","YOU KNOW WHAT???????","txt_speed:0.35;I'M GONNA BEAT THE HELL OUT OF YOU AND TAKE YOUR SOUL!!!!!_pause:25;txt_speed:0.5;_skip:3; AHAHAHAHAHAHAHAHAHAAHAtxt_speed:0.75;_scr:scr_dummy_activate_triggers;HAHAHAAHAH","AHAHAHAHAHAHAHAHAAHAHAHHAHAHAHAAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHHAAHAHAHAHAHHAAHHAAHAHAHAHAHAHAHAHAHAHAHA","HAHAHAHAAHA_scr:scr_dummy_activate_triggers;_pause:60; txt_speed:0.5;_skip:2;_shaking:0.5;Uh..._scr:scr_dummy_activate_triggers;","_shaking:0.33;How to uh... _pause:15; Wait a moment... _pause:30;","_shaking:0;Hey, by the way, how do you enter a battle? Asking for friend.","...","fine._pause:20;_shaking:0.5; Fine!_pause:20;_shaking:1; FINE!!! _pause:30;_shaking:0.75;\nI'll KILL YOU IN THE NEXT UPDATE!","_scr:scr_dummy_activate_triggers;..."]
	],
	
	just_a_dummy:
	[
	["It's _pause:15;actually_pause:25; just a dummy."]
	],
}

library_name = 
{
part1_name:[["TEXT","text","text...",[["choice1"],["choice2","$part2_name$0"]]]],
part2_name:[["yup"]]
}





}