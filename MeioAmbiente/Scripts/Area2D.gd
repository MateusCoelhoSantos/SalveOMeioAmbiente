extends Area2D

var lixos := 1

func _ready():
	pass
	
func _process(delta):
	pass
	
func _on_body_entered(body):
	print("Coletado!")
	Global.lixo += lixos
	print(Global.lixo)
	queue_free()
