extends Node

var slow_down_factor: float = 0.001
var is_slowing: bool = false

func _ready():
	Engine.time_scale = 0.001

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		if is_slowing:
			reset_time_scale()
		else:
			slow_down()

func slow_down():
	Engine.time_scale = slow_down_factor
	is_slowing = true

func reset_time_scale():
	Engine.time_scale = 1.0
	is_slowing = false
