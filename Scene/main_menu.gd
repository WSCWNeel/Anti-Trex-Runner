extends Control


func _on_start_pressed():
	get_tree().change_scene("res://Scene/game.tscn")

func _on_quit_pressed():
	get_tree().quit()

func _on_about_pressed():
	get_tree().change_scene_to_file("res://Scene/About Game.tscn")
