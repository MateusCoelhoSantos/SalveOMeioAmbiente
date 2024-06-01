extends Control

#@onready var transicao = get_parent().get_node("transicao")
@onready var transicao = $transicao
@export var next_scene : String = ""
@onready var color_rect = $transicao/color_rect


# Called when the node enters the scene tree for the first time.
func _ready():
	color_rect.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_btn_pressed():
	#get_tree().change_scene_to_file("res://Cenas/fase_1.tscn")
	color_rect.visible = true
	if !next_scene == "":
		transicao.change_scene(next_scene)
	else:
		print("No Loaded")


func _on_credits_btn_pressed():
	color_rect.visible = true
	if !next_scene == "":
		transicao.change_scene("res://Cenas/creditos.tscn")
	#get_tree().change_scene_to_file("res://Cenas/creditos.tscn")


func _on_quit_btn_pressed():
	get_tree().quit()
