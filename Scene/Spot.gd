extends Area2D

var occupied = false


func _on_Spot_body_entered(body):
	if body.is_in_group('Box'):
		occupied = true
		$Sprite.texture = load("res://SpotTrue.png")



func _on_Spot_body_exited(body):
	if body.is_in_group('Box'):
		occupied = false
		$Sprite.texture = load("res://Spot.png")

