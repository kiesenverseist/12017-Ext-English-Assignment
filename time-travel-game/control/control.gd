extends Node

var keyframes = []

func _ready():
	set_process(true)
	keyframes.append(keyframe.new())

func _process(delta):
	get_node("GUI/Label").set_text(String(keyframes.size()))
	
	if Input.is_action_pressed("time_travel") :#and keyframes.size() > 0 :
		get_node("Player").set_pos(keyframes[keyframes.size() - 1].player_pos)
		keyframes.pop_back()

func _on_Timer_timeout():
	keyframes.append(keyframe.new())

func keyframe:
	
