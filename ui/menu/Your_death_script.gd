extends Control

func _on_returnerd_button_down():
	Global.vida = 3
	get_tree().change_scene(Global.last_scene)

func _on_quit_button_down():
	get_tree().change_scene("res://ui/menu/menu.tscn")
