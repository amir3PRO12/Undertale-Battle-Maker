var data = load_game_info();

global.Run_Time = data.Time;
start_runtime = global.Run_Time;
timeoffset = current_time;

//Fun Value Of The Entire Undertale/Deltarune World, This Will Tell What Happens At What Exact Time And What Happens To Something Else.
global.Fun_Value = data.FUN;

obj_player.NAME = data.Name;
obj_player.LV = data.Love;
room_goto(data.Room);
obj_player.x = data.PlayerX;
obj_player.y = data.PlayerY;

//Speedrun Run.
global.Speedrun = false;

//SOULLESS Run.
global.SOULLESS_Genocide = false;
global.SOULLESS_Pacifist = false;
global.SOULLESS_Neutral = false;
global.SOULLESS_True_Pacifist = false;

//Ruins
global.Ruins_Genocide = false; //Genocide Or No Mercy Route. Killing Everyone In Your Path.
global.Ruins_True_Pacifist = false; //True Pacifist, Making Sure To Beat Asriel And Free Everyone In The Underground.
global.Ruins_Pacifist = true; //Normal Pacifist Where You Don't Kill Anyone.
global.Ruins_Neutral = false; //Neutral, You kill but choose mercy to some of the monsters.

global.Toriel_Dead = false;
global.Toriel_Spared = false;

//Snowdin
global.Snowdin_Genocide = false;
global.Snowdin_True_Pacifist = false;
global.Snowdin_Pacifist = true;
global.Snowdin_Neutral = false;

global.Papyrus_Dead = false;
global.Papyrus_Spared = false