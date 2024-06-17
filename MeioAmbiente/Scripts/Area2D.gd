extends Area2D

var lixos := 0

func _ready():
	pass
	
func _process(delta):
	if lixos == 0:
		lixos = 1
	
func _on_body_entered(body: Node2D) -> void:
	print("Coletado!")
	Global.lixo += lixos
	print(Global.lixo)
	queue_free()
	
func _on_area_entered(area):
	print("Reciclado")
	queue_free()
