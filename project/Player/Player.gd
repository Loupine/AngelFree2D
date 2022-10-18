extends KinematicBody2D


const _GRAVITY := 300
const _WING_FORCE := 1500

var can_fly := true
var _velocity := Vector2.ZERO

onready var fly_timer := get_node("FlyTimer")


func _physics_process(_delta)-> void:
	_hande_input()
	_process_velocity()
	_velocity = move_and_slide(_velocity, Vector2.UP)


func _process_velocity()-> void:
	if _velocity.y < _GRAVITY:
		_velocity.y += _GRAVITY / 5.0
	else:
		_velocity.y = _GRAVITY


func _hande_input()-> void:
	if Input.is_action_pressed("fly_up") and can_fly:
		_velocity.y = -_WING_FORCE
		can_fly = false
		fly_timer.start()


func _on_FlyTimer_timeout()-> void:
	can_fly = true
