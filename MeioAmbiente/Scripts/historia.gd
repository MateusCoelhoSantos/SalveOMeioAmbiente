extends Control

@export var next_scene : String = ""
@onready var transicao = $transicao
@onready var color_rect = $transicao/color_rect

func _ready():
	pass
	
func _process(delta):
	pass
	
func _on_continar_btn_pressed():
	color_rect.visible = true
	if !next_scene == "":
		transicao.change_scene(next_scene)
