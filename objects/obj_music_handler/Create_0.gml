#region Track Changes per Route & Room

/* Try to break up rooms in groups:
e.g. Area: rm_ruins (all of ruins)
	Place: rm_ruins_home (all of home in ruins)
	Room: rm_ruins_42 (for ONLY this room)
*/
route_room_tracks = {
	rm_ruins_2:	{
				area: "ruins",
				genocide: mus_fallendown,
				pacifist: mus_silence,
				true_pacifist: mus_reunited,
				neutral: mus_silence
				},
	rm_ruins_entrance:	{
				area: "ruins",
				genocide: mus_silence,
				pacifist: mus_silence,
				true_pacifist: mus_reunited,
				neutral: mus_silence
				},
	rm_ruins:	{
				area: "ruins",
				genocide: mus_ruins_toomuch,
				pacifist: mus_ruins,
				true_pacifist: mus_reunited,
				neutral: mus_ruins
				},
	"default":	{
				area: "ruins",
				genocide: mus_silence,
				pacifist: mus_silence,
				true_pacifist: mus_silence,
				neutral: mus_silence
				},
}

#endregion

function room_track_change(_room) {
	var _track_info = find_room_in(route_room_tracks, _room)
	
	switch global.Route[$ _track_info.area] {
		case ROUTES.GENOCIDE:
			if !audio_is_playing(_track_info.genocide){
				audio_stop_all();
				audio_play_sound(_track_info.genocide, 100, true, 1, 0, 1);
			}
			break;
			
		case ROUTES.NEUTRAL:
			if !audio_is_playing(_track_info.neutral){
				audio_stop_all();
				audio_play_sound(_track_info.neutral, 100, true, 1, 0, 1);
			}
			break;
			
		case ROUTES.PACIFIST:
			if !audio_is_playing(_track_info.pacifist){
				audio_stop_all();
				audio_play_sound(_track_info.pacifist, 100, true, 1, 0, 1);
			}
			break;
			
		case ROUTES.TRUE_PACIFIST:
			if !audio_is_playing(_track_info.true_pacifist){
				audio_stop_all();
				audio_play_sound(_track_info.true_pacifist, 100, true, 1, 0, 1);
			}
			break;
	}
}

// function to call on specific non-room-movement events
function set_track(track = mus_silence) {
	if !audio_is_playing(track){
			audio_stop_all();
			audio_play_sound(track, 100, true, 1, 0, 1);
	}
}