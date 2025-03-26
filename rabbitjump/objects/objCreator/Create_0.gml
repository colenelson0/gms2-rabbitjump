coins = 0;
stopGame = false;

spawnWait = [];

// level 0L: Coin Yellow, Watermelon
array_push(spawnWait,40 + irandom_range(0,260));

// level 0R: Coin Yellow, Toy Car
array_push(spawnWait,160 + irandom_range(0,260));

// level 1: Platform, Slab, Bin
array_push(spawnWait,irandom_range(0,200));

// level 2L: Coin Yellow
array_push(spawnWait,280 + irandom_range(0,260));

// level 2R: Coin Yellow, Bumblebee
array_push(spawnWait,160 + irandom_range(0,260));

// level 3: Box, Broken Box
array_push(spawnWait,120 + irandom_range(0,260));

// level 4L: Coin Red, Kite
array_push(spawnWait,280 + irandom_range(0,260));

// level 4R: Coin Red
array_push(spawnWait,400 + irandom_range(0,260));

// level 5: Cloud, Evil Cloud
array_push(spawnWait,240 + irandom_range(0,260));

// level 6L: Coin Blue
array_push(spawnWait,520 + irandom_range(0,260));

// level 6R: Coin Blue, Bird
array_push(spawnWait,400 + irandom_range(0,260));