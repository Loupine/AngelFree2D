extends Control


onready var bat_enemy_preload := preload("res://BatEnemy/BatEnemy.tscn")


func _ready():
	randomize()


func _spawn_enemies(var count : int):
	for enemy in count:
		var new_bat := bat_enemy_preload.instance()
		add_child(new_bat)


func _on_Timer_timeout():
	randomize()
	_spawn_enemies(randi() % 5)
