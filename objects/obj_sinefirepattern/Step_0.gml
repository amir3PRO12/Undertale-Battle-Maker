/// @description Insert description here
// You can write your code in this editor
theta += 3;
spawnTimer += 1;
if (spawnTimer >= 10)
{
	spawnTimer -= 10;
	if (random(1) < threshold)
	{
		instance_create_layer(x, y, "Instances", obj_firebullet, {theta : theta, dtheta : 3});
		if (in_a_row > 0) in_a_row = 0;
		else in_a_row -= 1;
		threshold = 0.5 - 0.05 * (in_a_row * (in_a_row - 1) / 2);
	}
	else
	{
		instance_create_layer(x, y, "Instances", obj_firebullet, {theta : theta + 180, dtheta : 3});
		if (in_a_row < 0) in_a_row = 0;
		else in_a_row += 1;
		threshold = 0.5 + 0.05 * (in_a_row * (in_a_row - 1) / 2);
	}
}