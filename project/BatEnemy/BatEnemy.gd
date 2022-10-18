extends KinematicBody2D


var _velocity := Vector2.ZERO


func _ready():
	randomize()
	position.x = 1300
	position.y = rand_range(60, 660)


func _physics_process(_delta):
	_velocity.x = -200
	_velocity = move_and_slide(_velocity, Vector2.UP)
