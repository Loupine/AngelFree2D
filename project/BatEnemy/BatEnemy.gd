extends KinematicBody2D


var _speed := 0.0
var _velocity := Vector2.ZERO


func _ready()-> void:
	randomize()
	position.x = 1930
	position.y = rand_range(0, 1000)
	_speed = rand_range(-800, -200)


func _physics_process(_delta)-> void:
	_velocity.x = _speed
	_velocity = move_and_slide(_velocity, Vector2.UP)
	
	if position.x < -100:
		queue_free()
