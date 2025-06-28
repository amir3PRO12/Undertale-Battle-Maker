for (var i = 0; i < array_length(dialogue); i++) {
    var d = dialogue[i];
    switch d.type {
        case DIALOGTYPE.textbox:
            trigger_textbox(d.text, true, d.speed, d.sound, d.mugshot, true, true, d.trigger_battle, d.font);
            if (dialogue != noone) {
                set_battle_to_encounter(d.battle);
            }
            break;
        case DIALOGTYPE.savepoint:
            trigger_saveprompt()
            break;
    }
}