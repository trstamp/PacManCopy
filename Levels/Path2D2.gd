extends Path2D

onready var follow = get_node("follow2")

func _ready():
	set_process(true)
	
func _process(delta):
	follow.set_offset(follow.get_offset() + 500 * delta)
