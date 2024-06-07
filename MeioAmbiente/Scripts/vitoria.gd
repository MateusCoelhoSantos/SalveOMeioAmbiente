extends Control

@onready var label_2 = $ColorRect/VBoxContainer/Label2

func _ready():
	label_2.text = str(Global.lixo) + " Coletados de 25 no tempo de " + Global.tempcontagem 
	
func _process(delta):
	pass
	
func _on_recomecar_btn_pressed():
	get_tree().change_scene_to_file("res://Cenas/tela_inicial.tscn")
	Global.lixo = 0
	
func _on_sair_btn_pressed():
	get_tree().quit()
