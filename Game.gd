extends Node2D
var game_end = false;

export (String) var level_name = 'level'

func _process(_delta):
	
	if game_end == false:
		var spots = $Spots.get_child_count();
		
		for i in $Spots.get_children():
			
			if i.occupied == true:
				spots -=1
				
		if spots == 0:
			game_end = true;
			
			get_tree().change_scene("res://Niveles/"+level_name+".tscn")
