extends Control

@onready var transicao = $transicao
@export var next_scene : String = ""
@onready var color_rect = $transicao/color_rect
@onready var margin_container = $MarginContainer

func _ready():
	color_rect.visible = false
	margin_container.anchors_preset = PRESET_FULL_RECT
	
func _process(delta):
	pass
	
func _on_start_btn_pressed():
	color_rect.visible = true
	if !next_scene == "":
		transicao.change_scene(next_scene)
	else:
		print("No Loaded")
	
func _on_credits_btn_pressed():
	color_rect.visible = true
	if !next_scene == "":
		transicao.change_scene("res://Cenas/creditos.tscn")
		
func _on_quit_btn_pressed():
	get_tree().quit()
