extends KinematicBody2D


var _velocity := Vector2.ZERO


func _ready()-> void:
	randomize()
	position.x = 1930
	position.y = rand_range(0, 1000)


func _physics_process(_delta)-> void:
	_velocity.x = -200
	_velocity = move_and_slide(_velocity, Vector2.UP)
	
	if position.x < -100:
		queue_free()
