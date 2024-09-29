extends Node

@export var can_toggle_pause: bool = true

func _process(delta):
	if Input.is_action_just_pressed("menu_pause"):
		if !get_tree().paused:
			paused()
		else:
			resume(delta)

func paused():
	if can_toggle_pause:
		get_tree().set_deferred("paused", true)
	
func resume(delta):
	if can_toggle_pause:
		get_tree().set_deferred("paused", false)
