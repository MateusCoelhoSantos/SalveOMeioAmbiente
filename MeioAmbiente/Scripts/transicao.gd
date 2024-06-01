extends CanvasLayer

@onready var color_rect = $color_rect

func _ready():
	color_rect.visible = true
	show_new_scene()
	
func change_scene(path, delay = 2.5):
	var scene_transition = get_tree().create_tween()
	scene_transition.tween_property(color_rect, "threshold", 1.0, 0.5)
	await scene_transition.finished
	assert(get_tree().change_scene_to_file(path) == OK)
	color_rect.visible = false
	
func show_new_scene():
	var show_transition = get_tree().create_tween() 
	show_transition.tween_property(color_rect, "threshold", 0.0, 0.5).from(1.0)
	await show_transition.finished
	color_rect.visible = false


func _on_continar_btn_pressed():
	pass # Replace with function body.
