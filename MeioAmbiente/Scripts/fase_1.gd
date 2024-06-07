extends Node2D

@onready var control = $HUD/Control

func _ready():
	control.time_is_up.connect(fim_de_jogo)
	
func _process(delta):
	if Global.lixo == 25:
		get_tree().change_scene_to_file("res://Cenas/vitoria.tscn")
	
func fim_de_jogo():
	get_tree().change_scene_to_file("res://Cenas/fimdejogo.tscn")
	Global.lixo = 0
