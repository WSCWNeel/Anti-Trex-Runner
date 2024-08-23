extends Area2D

@onready var timer = $Timer
func _on_body_entered(body):
	print("You died")
<<<<<<< Updated upstream
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
=======
>>>>>>> Stashed changes
	timer.start()


func _on_timer_timeout():
<<<<<<< Updated upstream
	Engine.time_scale = 1.0
=======
>>>>>>> Stashed changes
	get_tree().reload_current_scene()	
