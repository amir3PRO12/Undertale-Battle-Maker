if place_meeting(x, y, obj_player) and not instance_exists(obj_fade) && nicheCase == 0{
	var inst = instance_create_depth(0, 0, -9999, obj_fade);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.target_face = target_face;
}
else if(nicheCase == 1 && (place_meeting(x, y, obj_player) || nicheActive == true))
{
	 ///nicheCase = 1, is the special case we will be using to go from rm_snowdin_37,
	 ///to rm_snowdin_38 (living room to kitchen)
	 
	 ///Grabbing background layer to change its alpha
	 var layer_id = layer_get_id("Background_Upstairs");
	 var upstairs_background = layer_background_get_id(layer_id);
	 layer_background_alpha(upstairs_background,imgAlpha37); 
	 
	 ///Creating an array to store instances that are upstairs to change their alpha
	 
	 var upstairsInstances = [obj_papyrus_door, obj_sans_door, obj_sans_door_fire, obj_papyrus_and_sans_painting];
	 
	 ///if nicheActive is true it effectively would prevent the player from backing out of the door
	 ///so this keeps us safe from some weird glitching out if you were to walk back
	 
	 nicheActive = true;
	 
	 ///Checking if the image alpha is above 0, if it is, decrease it
	 ///Once it is 0 we go to the kitchen
	 if(imgAlpha37 > 0)
	 {
		imgAlpha37 -= 0.2;	 
	 }
	 else if(imgAlpha37 <= 0)
	 {
		room_goto(rm_snowdin_38);	 
	 }
	 
	 ///Loop through the objects upstairs so we can decrease their image alpha with the background
	 ///We honestly probably don't need to do it this way but I think it makes it easier to work with
	 for(var i = 0; i < array_length(upstairsInstances); i++)
	 {
		upstairsInstances[i].image_alpha = imgAlpha38;
		
		if(i >= array_length(upstairsInstances))
		{
			i = 0;	
		}
	 }
	 
	 ///The nicheCase == 2 below is basically the exact same as this
	 ///The only difference is we increase image alphas rather than decrease
}
else if(nicheCase == 2 && (place_meeting(x, y, obj_player) || nicheActive == true))
{
	///nicheCase = 2, is the special case we will be using to go from rm_snowdin_38,
	///to rm_snowdin_37 (kitchen back to living room)
	
	
	var layer_id = layer_get_id("Background_Upstairs");
	var upstairs_background = layer_background_get_id(layer_id);
	layer_background_alpha(upstairs_background,imgAlpha38); 
	
	var upstairsInstances = [obj_papyrus_door, obj_sans_door, obj_sans_door_fire, obj_papyrus_and_sans_painting];
	
	nicheActive = true;
	
	 if(imgAlpha38 < 1)
	 {
		imgAlpha38 += 0.2;	 
	 }
	 else if(imgAlpha38 >= 1)
	 {
		room_goto(rm_snowdin_37);	 
	 }
	 
	 for(var i = 0; i < array_length(upstairsInstances); i++)
	 {
		upstairsInstances[i].image_alpha = imgAlpha38;
		
		if(i >= array_length(upstairsInstances))
		{
			i = 0;	
		}
	 }
}