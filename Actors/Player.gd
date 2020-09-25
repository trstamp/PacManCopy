extends Actor


func _physics_process(_delta):
	
	var direction = Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	)
	velocity = maxspeed * direction


func _on_EnemyDetector_body_entered(body):
	queue_free()
	get_tree().change_scene("res://src/Levels/GameOver.tscn")
