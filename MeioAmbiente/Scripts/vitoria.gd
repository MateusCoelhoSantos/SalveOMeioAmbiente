extends Control

func _ready():
	pass # Replace with function body.
	
func _process(delta):
	pass
	
func _on_recomecar_btn_pressed():
	get_tree().change_scene_to_file("res://Cenas/tela_inicial.tscn")
	Global.lixo = 0
	
func _on_sair_btn_pressed():
	get_tree().quit()
