extends CanvasLayer



func _ready():
	visible = false

func _on_return_button_down():
	get_tree().paused = false
	visible = false
	
func _on_quit_button_down():
	get_tree().paused = false	
	get_tree().change_scene("res://Menu/menu.tscn")
