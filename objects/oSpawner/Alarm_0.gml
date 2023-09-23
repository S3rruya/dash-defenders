var _spawnPoint = random_range(66, room_width - 66);

instance_create_layer(_spawnPoint, -112,"Instances",oNormalEnemy);

if (initialDelay > minDelay) {
    initialDelay -= delayRedutionRate * (score / 100);
}
show_debug_message(initialDelay);
alarm[0] = initialDelay;