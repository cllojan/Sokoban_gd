extends KinematicBody2D

onready var ray = $RayCast2D
var grid_size = 16
var moveArr =[]
var inputs ={
	"ui_up":Vector2.UP,
	"ui_down":Vector2.DOWN,
	"ui_left":Vector2.LEFT,
	"ui_right":Vector2.RIGHT
}
func changePos(pos):
	print(pos)
func move(dir):
	var vector_pos = inputs[dir] * grid_size
	moveArr.push_back(position)
	ray.cast_to =vector_pos
	ray.force_raycast_update()
	if !ray.is_colliding():
		print("Box:", position)
		
		position += vector_pos			
		return true	
	return false

