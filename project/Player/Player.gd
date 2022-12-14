extends KinematicBody2D


signal player_died

const _GRAVITY := 300
const _WING_FORCE := 1400

var _can_fly := true
var _velocity := Vector2.ZERO

onready var _fly_timer := get_node("FlyTimer")
onready var _animated_sprite := get_node("AnimatedSprite")


func _physics_process(_delta:float)-> void:
	_hande_input()
	_process_gravity()
	_velocity.x = 0
	_velocity = move_and_slide(_velocity, Vector2.UP)
	_handle_collison()


func _hande_input()-> void:
	if Input.is_action_pressed("fly_up") and _can_fly:
		_velocity.y = -_WING_FORCE
		_can_fly = false
		_fly_timer.start()


func _handle_collison()-> void:
	for i in get_slide_count():
		var _collision := get_slide_collision(i)
		if _collision.collider.is_in_group("enemies"):
			die()


func die()-> void:
	_animated_sprite.animation = "die"
	_fly_timer.stop()
	_can_fly = false
	emit_signal("player_died")


func _process_gravity()-> void:
	if _velocity.y < _GRAVITY:
		_velocity.y += _GRAVITY / 5.0
	else:
		_velocity.y = _GRAVITY


func _on_FlyTimer_timeout()-> void:
	_can_fly = true


func _on_AnimatedSprite_animation_finished()-> void:
	if _animated_sprite.animation == "die":
		_animated_sprite.stop()
		queue_free()
