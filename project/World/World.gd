extends Control


var _is_player_alive := true
var _score := 0

onready var bat_enemy_preload := preload("res://BatEnemy/BatEnemy.tscn")
onready var player := get_node("Player")
onready var score_label := get_node("ScoreLabel")
onready var restart_button := get_node("RestartButton")


func _ready()-> void:
	randomize()


func _physics_process(_delta)-> void:
	if _is_player_alive:
		_increment_score()
	


func _increment_score():
	_score += 1
	score_label.text = String(_score)


func _show_restart_button():
	restart_button.rect_position.x = 710
	restart_button.rect_position.y = 440
	restart_button.text = "Final score: %s. Restart?" % String(_score)


func _spawn_enemies(var count : int)-> void:
	for enemy in count:
		var new_bat := bat_enemy_preload.instance()
		add_child(new_bat)


func _on_SpawnTimer_timeout()-> void:
	_spawn_enemies(randi() % 5)
	randomize()


func _on_Player_player_died():
	_is_player_alive = false
	_show_restart_button()


func _on_RestartButton_pressed():
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menu/Menu.tscn")
