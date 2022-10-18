extends Control


onready var bat_enemy_preload := preload("res://BatEnemy/BatEnemy.tscn")


func _ready()-> void:
	randomize()


func _spawn_enemies(var count : int)-> void:
	for enemy in count:
		var new_bat := bat_enemy_preload.instance()
		add_child(new_bat)


func _on_Timer_timeout()-> void:
	_spawn_enemies(randi() % 5)
	randomize()
