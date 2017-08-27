extends Node2D

var speed = 200

func _ready():
	set_process(true)

func _process(delta):
	var move = Vector2(0,0)
	if Input.is_action_pressed("move_left"):
		move += Vector2(-speed,0)
	if Input.is_action_pressed("move_right"):
		move += Vector2(speed,0)
	if Input.is_key_pressed(KEY_W):
		move += Vector2(0,-speed)

	
	set_pos(get_pos()+move*delta)
