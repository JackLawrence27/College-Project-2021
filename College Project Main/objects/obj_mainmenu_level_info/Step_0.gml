/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(obj_mainmenu_controller.menu = 2){
	
	if(obj_mainmenu_controller.selected = 0){
		if(global.levelOneUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "ENCHANTED FOREST"
	}
	
	if(obj_mainmenu_controller.selected = 1){
		if(global.levelTwoUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "LEVEL TWO"

	}
	
	if(obj_mainmenu_controller.selected = 2){
		if(global.levelThreeUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "LEVEL THREE"
	}
	
	if(obj_mainmenu_controller.selected = 3){
		if(global.levelFourUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "LEVEL FOUR"
	}
	
	if(obj_mainmenu_controller.selected = 4){
		if(global.levelFiveUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "LEVEL FIVE"
	}
	
	if(obj_mainmenu_controller.selected = 5){
		if(global.levelSixUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "LEVEL SIX"
	}
	
	if(obj_mainmenu_controller.selected = 6){
		if(global.levelSevenUnlocked = false){ showLocked = true; } else { showLocked = false; }
		levelTitle = "LEVEL SEVEN"
	}
}