extends CanvasLayer

@onready var continuar_btn = $VBoxContainer/continuar_btn

func _ready():
	visible = false
	
func _process(delta):
	pass
	
func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true
		continuar_btn.grab_focus()
	
func _on_continuar_btn_pressed():
	get_tree().paused = false
	visible = false
	
func _on_sair_btn_pressed():
	get_tree().quit()
	Global.lixo = 0
