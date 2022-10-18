extends KinematicBody2D


const _GRAVITY := 300

var _velocity := Vector2.ZERO


func _physics_process(_delta)-> void:
	if _velocity.y < _GRAVITY:
		_velocity.y += _GRAVITY
	else:
		_velocity.y = _GRAVITY
	
	_velocity = move_and_slide(_velocity, Vector2.UP)
