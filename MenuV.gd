extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Inicio.grab_focus()


func _on_Inicio_pressed():
	get_tree().change_scene("res://Niveles/Nivel1.tscn")


func _on_Opciones_pressed():
	pass # Replace with function body.


func _on_Salir_pressed():
	get_tree().quit()
