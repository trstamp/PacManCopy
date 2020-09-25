extends Control

func _on_ClassicArena_pressed():
	get_tree().change_scene("res://src/Levels/ClassicArenaLevel.tscn")

func _on_MasterArena_pressed():
	get_tree().change_scene("res://src/Levels/MasterArenaLevel.tscn")
