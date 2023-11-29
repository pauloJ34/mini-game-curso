extends Area2D


func _ready():
	pass

func _on_door_body_entered(body):
	if body.is_in_group("player"):
		$animate.play("open")
		Global.in_door = self.name
		#print(self.name)
	pass # Replace with function body.


func _on_door_body_exited(body):
	if body.is_in_group("player"):
		$animate.play("close")
		Global.in_door = null
		
	pass # Replace with function body.
