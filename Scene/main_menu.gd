extends Node2D



func _on_StartButton_pressed():
	get_tree().change_scene("res://Scene/game.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()

func _on_PauseButton_pressed():
	get_tree().paused = true
	$PauseButton.hide()
	$ResumeButton.show()

func _on_ResumeButton_pressed():
	get_tree().paused = false
	$ResumeButton.hide()
	$PauseButton.show()
