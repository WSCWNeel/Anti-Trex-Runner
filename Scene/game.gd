extends Node2D

var target_time_scale: float = 0.05
var speed_decrement: float = 0.01
var is_slowing_down: bool = false

func _ready() -> void:
	Engine.time_scale = 1.0

func start_slowing_down() -> void:
	is_slowing_down = true
	print("The moonwalking Anti Trex Runner is getting tired moonwalking")

func stop_slowing_down() -> void:
	is_slowing_down = false
	print("Moonwalking levels restored, max aura with 1k+ iq achieved, Anti Trex Runner achieved Giga Chad body")

func _process(delta: float) -> void:
	if is_slowing_down:

		if Engine.time_scale > target_time_scale:
			Engine.time_scale -= speed_decrement * delta

			if Engine.time_scale < target_time_scale:
				Engine.time_scale = target_time_scale
				print("You reached the max speed of this moonwalking Anti Trex Runner with it's teeny tiny legs.")
		else:
			print("Already at the max speed this little moonwalking Anti Trex Runner can run at with it's teeny tiny legs.")

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		start_slowing_down()
	elif event.is_action_pressed(""):
		stop_slowing_down()
