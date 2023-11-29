extends Control

func _ready():
	Global.vida = 3

func _on_play_button_down():
	get_tree().change_scene("res://scenery/levels/lvl_1.tscn")

func _on_quit_button_down():
	get_tree().quit()
