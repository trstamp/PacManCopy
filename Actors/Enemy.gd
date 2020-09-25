extends "res://src/Actors/Actor.gd"

export var eSpeed = 500
var player = preload("res://src/Actors/Player.tscn").instance()
onready var player_container = get_node("player_container")

func _ready():
	player_container.add_child(player)

func _physics_process(_delta):
	velocity = Vector2.ZERO
	
	velocity = (player.position - position).normalized() * eSpeed
	velocity = move_and_slide(velocity)
	
	if velocity.x > 0:
		velocity.y = 0
	if velocity.y > 0:
		velocity.x = 0
