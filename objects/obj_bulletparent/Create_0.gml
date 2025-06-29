/// @description Insert description here
// You can write your code in this editor
if (!variable_instance_exists(id, "Owner")) Owner = noone;
if (!variable_instance_exists(id, "Dmg")) Dmg = 1;
if (!variable_instance_exists(id, "DisappearOnHit")) DisappearOnHit = false;
if (!variable_instance_exists(id, "AttackColor")) AttackColor = []; // "blue", "orange", "green"
event_inherited();

