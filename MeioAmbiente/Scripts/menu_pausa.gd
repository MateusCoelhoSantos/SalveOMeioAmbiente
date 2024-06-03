extends CanvasLayer

@onready var continue_bnt = $VBoxContainer/continue_bnt

# Called when the node enters the scene tree for the first time.
func _ready():
	visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		visible = true
		get_tree().paused = true
		continue_bnt.grab_focus()

func _on_continue_pressed():
	get_tree().paused = false
	visible = false

func _on_sair_pressed():
	get_tree().quit()
