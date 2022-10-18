extends KinematicBody2D


const _GRAVITY := 300
const _WING_FORCE := 1500

var can_fly := true
var _velocity := Vector2.ZERO

onready var fly_timer := get_node("FlyTimer")
onready var animated_sprite := get_node("AnimatedSprite")


func _physics_process(_delta)-> void:
	_hande_input()
	_handle_collison()
	_process_gravity()
	_velocity.x = 0
	_velocity = move_and_slide(_velocity, Vector2.UP)


func _hande_input()-> void:
	if Input.is_action_pressed("fly_up") and can_fly:
		_velocity.y = -_WING_FORCE
		can_fly = false
		fly_timer.start()


func _handle_collison()-> void:
	for i in get_slide_count():
		var collision := get_slide_collision(i)
		if collision.collider.is_in_group("enemies"):
			_die()


func _die()-> void:
	animated_sprite.animation = "die"


func _process_gravity()-> void:
	if _velocity.y < _GRAVITY:
		_velocity.y += _GRAVITY / 5.0
	else:
		_velocity.y = _GRAVITY


func _on_FlyTimer_timeout()-> void:
	can_fly = true


func _on_AnimatedSprite_animation_finished()-> void:
	if animated_sprite.animation == "die":
		animated_sprite.stop()
		queue_free()
