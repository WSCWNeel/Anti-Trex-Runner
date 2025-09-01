extends Control

var score = 0
var time_elapsed = 0
var timer

func _ready():
	timer = Timer.new()
	timer.wait_time = 1.0  
	timer.connect("timeout", self, "_on_timer_timeout")
	add_child(timer)
	timer.start()
	update_score()

func _on_timer_timeout():
	time_elapsed += 1
	score = time_elapsed * 10  
	update_score()

func update_score():
	$Label.text = "Score: " + str(score)
	
func _exit_tree():
	if timer.is_stopped() == false:
		timer.stop()
	else:
		timer.disconnect("timeout", self, "_on_timer_timeout")

	
