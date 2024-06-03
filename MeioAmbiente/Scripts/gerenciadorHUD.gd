extends Control

@onready var lixocontador = $MarginContainer/HBoxContainer/lixocontador as Label
@onready var tempocontador = $MarginContainer/HBoxContainer2/tempocontador as Label
@onready var tempo = $tempo as Timer

var min = 0
var seg = 0
@export_range(0,5) var default_min := 1
@export_range(0,59) var default_seg := 0

signal time_is_up()

# Called when the node enters the scene tree for the first time.
func _ready():
	lixocontador.text = str("%03d" % Global.lixo)
	tempocontador.text = str("%02d" % default_min) + ":" + str("%02d" % default_seg)
	reset_tempo()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	lixocontador.text = str("%03d" % Global.lixo)
	
	if min == 0 and seg == 0:
		emit_signal("time_is_up")

func _on_tempo_timeout():
	if seg == 0:
		if min > 0:
			min -= 1
			seg = 60
	seg -= 1
	
	tempocontador.text = str("%02d" % min) + ":" + str("%02d" % seg)
	
func reset_tempo():
	min = default_min
	seg = default_seg
