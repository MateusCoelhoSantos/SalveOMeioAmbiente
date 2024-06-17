extends Control

@onready var label_2 = $ColorRect/VBoxContainer/Label2

func _ready():
	label_2.text = str(Global.lixo) + " Lixos Coletados de 25 lixos, restando ainda " + Global.tempcontagem + " do Tempo"
	
func _process(delta):
	pass
	
func _on_continuar_btn_pressed():
	get_tree().change_scene_to_file("res://reciclagem.tscn")
	Global.lixo = 0
