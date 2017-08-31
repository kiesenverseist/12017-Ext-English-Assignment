extends Node

var keyframes = []

func _ready():
	set_process(true)
	keyframes.append(Vector2(0,0))

func _process(delta):
	get_node("GUI/Label").set_text(String(keyframes.size()))
	
	if Input.is_key_pressed(KEY_SPACE) :
		get_node("Player").set_pos(keyframes[keyframes.size() - 1])
		keyframes.pop_back()

func _on_Timer_timeout():
	keyframes.append(get_node("Player").get_pos())
