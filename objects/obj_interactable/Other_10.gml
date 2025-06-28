for (var i = 0; i < array_length(dialogue); i++) {
    var d = dialogue[i];
    trigger_textbox(d.text, true, d.speed, d.sound, d.mugshot, true, true, d.trigger_battle, d.font);
    if (dialogue != noone) {
        set_battle_to_encounter(d.battle);
    }
}