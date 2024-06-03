extends Node2D

@onready var control = $HUD/Control

# Called when the node enters the scene tree for the first time.
func _ready():
	control.time_is_up.connect(fim_de_jogo)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func fim_de_jogo():
	get_tree().change_scene_to_file("res://Cenas/fimdejogo.tscn")
	Global.lixo = 0
