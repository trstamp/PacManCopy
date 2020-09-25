extends KinematicBody2D
class_name Actor

export var maxspeed = Vector2(800, 800)

var velocity: = Vector2.ZERO

func _physics_process(_delta):
	
	velocity = move_and_slide(velocity)

