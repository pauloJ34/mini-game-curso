extends Node

func _ready():
	Global.last_scene = "res://scenery/levels/"+get_tree().get_current_scene().get_name()+".tscn"

func _process(_delta):
	if Input.is_action_just_pressed("ui_cancel"):
		$menu.visible = true
		get_tree().paused = true
	if Global.in_door != null and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene("res://scenery/levels/"+Global.in_door+".tscn")



func _on_hole_body_entered(body):
	if body.is_in_group("player"):
		Global.vida -= 1	
		get_tree().change_scene(Global.last_scene)



