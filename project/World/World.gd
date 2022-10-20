extends Control


var _is_player_alive := true
var _score := 0

onready var _bat_enemy_preload := preload("res://BatEnemy/BatEnemy.tscn")
onready var _player := get_node("Player")
onready var _score_label := get_node("ScoreLabel")
onready var _restart_button := get_node("RestartButton")
onready var _music_player := get_node("/root/MusicPlayer")


func _ready()-> void:
	_music_player.stream_paused = false
	randomize()


func _physics_process(_delta:float)-> void:
	if _is_player_alive:
		_increment_score()


func _increment_score()-> void:
	_score += 1
	_score_label.text = String(_score)


func _show_restart_button()-> void:
	_restart_button.rect_position.x = 710
	_restart_button.rect_position.y = 440
	_restart_button.text = "Final score: %d. Restart?" % _score


func _spawn_enemies(var count:int)-> void:
	for enemy in count:
		var _new_bat := _bat_enemy_preload.instance()
		add_child(_new_bat)


func _on_SpawnTimer_timeout()-> void:
	_spawn_enemies(randi() % 5)
	randomize()


func _on_Player_player_died()-> void:
	_is_player_alive = false
	_show_restart_button()
	_music_player.stream_paused = true


func _on_RestartButton_pressed()-> void:
	# warning-ignore:return_value_discarded
	get_tree().change_scene("res://Menu/Menu.tscn")
