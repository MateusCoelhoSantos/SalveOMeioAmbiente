extends Control

@onready var lixocontador = $MarginContainer/HBoxContainer/lixocontador as Label
@onready var tempocontador = $MarginContainer/HBoxContainer2/tempocontador as Label


# Called when the node enters the scene tree for the first time.
func _ready():
	lixocontador.text = str("%04d" % Global.lixo)
	tempocontador.text = str("%04d" % Global.tempo)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	lixocontador.text = str("%04d" % Global.lixo)
