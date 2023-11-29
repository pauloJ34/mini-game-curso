extends KinematicBody2D

onready var animate = $Animate
onready var colider = $Collision

export var speed_player = 250
export var jump_force = -400

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var velocity = Vector2.ZERO

func _ready():
	if Global.vida > 0:
		$HUD.visible = true
		for i in range(Global.vida):
			$HUD/Sprite.get_children()[i].visible = true
	else:
		get_tree().change_scene("res://ui/menu/Your_death.tscn")

func _physics_process(delta):
	rule(delta)
	animations()
	jump()


func rule(delta):
	if !is_on_floor():
		velocity.y += gravity * delta 
	var move_direction = int(Input.is_action_pressed("ui_move_right")) - int(Input.is_action_pressed("ui_move_left")) 
	velocity.x = move_direction * speed_player
	move_and_slide(velocity,Vector2(0,-1))
	
func jump():
	if Input.is_action_just_pressed("ui_move_jump") and is_on_floor():
		animate.play("jump")
		velocity.y = jump_force
		
func animations():
		if Input.is_action_pressed("ui_move_right"):
			if is_on_floor():
				animate.play("run")
			if colider.position.x > 0:
				animate.flip_h = false
				colider.position.x *=-1 		
		elif Input.is_action_pressed("ui_move_left"):
			if is_on_floor():
				animate.play("run")
			if colider.position.x < 0:		
				animate.flip_h = true
				colider.position.x *=-1 
		elif is_on_floor():
			animate.play("idle")

