enum ROUTES {
	GENOCIDE,		 //Genocide Or No Mercy Route. Killing Everyone In Your Path.
	TRUE_PACIFIST,	//True Pacifist, Making Sure To Beat Asriel And Free Everyone In The Underground.
	PACIFIST,		//Normal Pacifist Where You Don't Kill Anyone.
	NEUTRAL			//Neutral, You kill but choose mercy to some of the monsters.
}

global.Route = {
	ruins : ROUTES.GENOCIDE,
	toriel_dead : false,
	
	snowdin : ROUTES.GENOCIDE,
	papyrus_dead : false,
}

/* DEPRECATED DELETE THIS
//Ruins
global.Ruins_Genocide = true; //Genocide Or No Mercy Route. Killing Everyone In Your Path.
global.Ruins_True_Pacifist = false; //True Pacifist, Making Sure To Beat Asriel And Free Everyone In The Underground.
global.Ruins_Pacifist = false; //Normal Pacifist Where You Don't Kill Anyone.
global.Ruins_Neutral = false; //Neutral, You kill but choose mercy to some of the monsters.

global.Toriel_Dead = false;
global.Toriel_Spared = false;

//Snowdin
global.Snowdin_Genocide = true;
global.Snowdin_True_Pacifist = false;
global.Snowdin_Pacifist = false;
global.Snowdin_Neutral = false;

global.Papyrus_Dead = false;
global.Papyrus_Spared = false
*/

#region Room Changes per Route

/* Try to break up rooms in groups:
e.g. Area: rm_ruins (all of ruins)
	Place: rm_ruins_home (all of home in ruins)
	Room: rm_ruins_42 (for ONLY this room)
*/
route_room_changes = {
	rm_ruins_2:	{
				area: "ruins",
				always_keep: [obj_ruins_npc_vegetoid],
				genocide_hide: [obj_npcs_parent],
				neutral_hide: [obj_npcs_ruins_parent, obj_object_ruins_parent]
				},	
	rm_ruins:	{
				area: "ruins",
				always_keep: [],
				genocide_hide: [obj_npcs_parent, obj_object_ruins_parent],
				neutral_hide: [obj_npcs_ruins_parent, obj_object_ruins_parent]
				},	
	"default":	{
				area: "ruins",
				always_keep: [obj_object_main_parent],
				genocide_hide: [obj_npcs_parent, obj_object_parent],
				neutral_hide: [obj_object_parent]
				},
}

#endregion

function route_room_change(_room) {
	var _room_info = find_room_in(route_room_changes, _room)
	
	switch global.Route[$ _room_info.area] {
		case ROUTES.GENOCIDE:
			//Cycle through to-be-hidden objects and omit always-keeps
			for (var i = 0; i < array_length(_room_info.genocide_hide); i += 1) {
				with (_room_info.genocide_hide[i]) {
					if not array_contains(_room_info.always_keep, object_index) {
						set_hidden(true)	
					}
				}
			}
			break;
			
		case ROUTES.NEUTRAL:
			for (var i = 0; i < array_length(_room_info.neutral_hide) ; i += 1) {
				with (_room_info.neutral_hide[i]) {
					if not array_contains(_room_info.always_keep, object_index) {
						set_hidden(true)	
					}
				}
			}
			break;
			
		case ROUTES.PACIFIST:
			break;
			
		case ROUTES.TRUE_PACIFIST:
			break;
	}
}