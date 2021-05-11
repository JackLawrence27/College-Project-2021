xMoveGrass = 0;
xMoveGrass2 = 0;

spawnOffset = 0;
spawnOffsetFoliage = 0;

enviromentCount = 0;
foliageCount = 0;

if(room = rm_cutscene_intro){
enviromentCount = 400;
foliageCount = 600;
}

if(room = rm_cutscene_confront){
enviromentCount = 50;
foliageCount = 32;
}
randomize();