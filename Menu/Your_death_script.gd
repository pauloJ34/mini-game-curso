extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_returnerd_button_down():
	Global.vida = 3
	get_tree().change_scene(Global.last_scene)

func _on_quit_button_down():
	get_tree().change_scene("res://Menu/menu.tscn")
