extends Control


var _is_player_alive := true
var _score := 0

onready var bat_enemy_preload := preload("res://BatEnemy/BatEnemy.tscn")
onready var player := get_node("Player")
onready var score_label := get_node("ScoreLabel")


func _ready()-> void:
	randomize()


func _physics_process(_delta)-> void:
	if _is_player_alive:
		_score += 1
		score_label.text = String(_score)


func _spawn_enemies(var count : int)-> void:
	for enemy in count:
		var new_bat := bat_enemy_preload.instance()
		add_child(new_bat)


func _on_SpawnTimer_timeout()-> void:
	_spawn_enemies(randi() % 5)
	randomize()


func _on_Player_player_died():
	_is_player_alive = false
