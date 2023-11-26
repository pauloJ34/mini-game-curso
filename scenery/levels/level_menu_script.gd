extends Node

func _ready():
	Global.last_scene = "res://scenery/levels/"+get_tree().get_current_scene().get_name()+".tscn"

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		$menu.visible = true
		get_tree().paused = true

