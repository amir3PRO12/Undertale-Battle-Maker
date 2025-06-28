enum gp_sticks {
	left,
	right
}

global.joystick_deadzone = 0.5; //Minimum of 0, maximum of 1.
global.default_keys = {
	keyboard: {
		key_left: [ord("A"), vk_left],
		key_down: [ord("S"), vk_down],
		key_up: [ord("W"), vk_up],
		key_right: [ord("D"), vk_right],
		key_run: [ord("X"), vk_shift],
		key_confirm: [ord("Z"), vk_enter],
        key_cancel: [ord("X"), vk_shift],
        key_menu: [ord("C"), vk_alt],
	},
	gamepad: {
		key_left: [gp_padl, "leftAxis"],
		key_down: [gp_padd, "downAxis"],
		key_up: [gp_padu, "upAxis"],
		key_right: [gp_padr, "rightAxis"],
		key_run: [gp_face3],
		key_confirm: [gp_face1],
        key_cancel: [gp_face3],
        key_menu: [gp_face4],
	}
};




//I'd recommend you don't edit the rest of the script below this comment.




/// @name keybind_sys_init()
/// @description Initiates the keybind system.
function keybind_sys_init(dir = "Inputs.json") {
	global.gamepads = [];
	if (!file_exists(dir)) {
		JSON_create(dir, global.default_keys, true);
	}
	keybinds_refresh(dir);
}
function keybinds_refresh(dir = "Inputs.json") {
	global.keybinds = JSON_read(dir);
    var changed = false;
    for (var i = 0; i < struct_names_count(global.keybinds); i++) {
        var device = struct_get_names(global.keybinds)[i];
        
        for (var j = 0; j < struct_names_count(global.keybinds[$ device]); j++) {
            var filenames = struct_get_names(global.keybinds[$ device]);
            var defaultnames = struct_get_names(global.default_keys[$ device]);
            for (var t = 0; t < max(array_length(filenames), array_length(defaultnames)); t++) {
                if (filenames[t] != defaultnames[t] || array_length(filenames) != defaultnames) {
                    changed = true;
                    break;
                }
            }
            if (changed) {
                break;
            }
        }
        if (changed) {
            break;
        }
    }
    if (changed) {
        JSON_create(dir, global.default_keys, true);
        global.keybinds = global.default_keys;
    }
}
function Keybind(key_name, gamepad_slot = 0, stick = gp_sticks.right) constructor {
	held = false;
	pressed = false;
	released = false;
	slot = gamepad_slot;
	gp_stick = stick;
	name = key_name;
	joystickMappings = {
		leftAxis: gp_stick ? gp_axisrh : gp_axislh,
		rightAxis: gp_stick ? gp_axisrh : gp_axislh,
		downAxis: gp_stick ? gp_axisrv : gp_axislv,
		upAxis: gp_stick ? gp_axisrv : gp_axislv
	};
	keyboard_binds = global.keybinds.keyboard[$ name];
	gamepad_binds = global.keybinds.gamepad[$ name];
	static refresh = function () {
		keyboard_binds = global.keybinds.keyboard[$ name];
		gamepad_binds = global.keybinds.gamepad[$ name];
		gp_stick = stick;
		joystickMappings = {
			leftAxis: gp_stick ? gp_axisrh : gp_axislh,
			rightAxis: gp_stick ? gp_axisrh : gp_axislh,
			downAxis: gp_stick ? gp_axisrv : gp_axislv,
			upAxis: gp_stick ? gp_axisrv : gp_axislv
		};
	}
	static update = function () {
		held = false;
		pressed = false;
		released = false;
		for (var i = 0; i < array_length(keyboard_binds); i++) {
			held |= keyboard_check(keyboard_binds[i]);
			pressed |= keyboard_check_pressed(keyboard_binds[i]);
			released |= keyboard_check_released(keyboard_binds[i]);
		}
		if (gamepad_is_connected(0)) {
			for (var i = 0; i < array_length(gamepad_binds); i++) {
				if (is_string(gamepad_binds[i])) {
					if (gamepad_binds[i] == "rightAxis" || gamepad_binds[i] == "downAxis") {
						held |= gamepad_axis_value(0, joystickMappings[$ gamepad_binds[i]]) >= global.joystick_deadzone;
					} else if (gamepad_binds[i] == "leftAxis" || gamepad_binds[i] == "upAxis") {
						held |= gamepad_axis_value(0, joystickMappings[$ gamepad_binds[i]]) <= -global.joystick_deadzone;
					}
				} else {
					held |= gamepad_button_check(0, gamepad_binds[i]);
					pressed |= gamepad_button_check_pressed(0, gamepad_binds[i]);
					released |= gamepad_button_check_released(0, gamepad_binds[i]);
				}
			}
		}
	}
}

