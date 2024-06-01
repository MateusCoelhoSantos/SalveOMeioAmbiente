extends Area2D

# Sinal para notificar a coleta do item
signal item_collected

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
#func _on_Area2D_body_entered(body):
	#if body.is_in_group("Player"):
		#emit_signal("item_collected")
		#print("Pegou")
		#queue_free()  # Remove o item da cena

func _on_body_entered(body):
	print("Coletado!")
	emit_signal("item_collected")
	queue_free()
