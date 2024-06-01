extends CharacterBody2D

@export var speed = 180
@onready var animation := $AnimaHolly as AnimatedSprite2D
var items_collected = 0

func _ready():
	# Conecte o sinal de todos os itens colecionáveis ao jogador
	#for collectible in get_tree().get_nodes_in_group("Collectibles"):
		#collectible.connect("item_collected",self,"_on_item_collected")
	pass
	
func get_input():
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed 
	if  Input.get_vector("left", "right", "up", "down"):
		velocity = direction * speed
		animation.play("running")
	else:
		animation.play("idle") 
	
func _physics_process(delta):
	get_input()
	move_and_slide()
	_on_area_2d_3_item_collected()
	
func _process(delta):
	if Input.is_action_pressed("right"):
		animation.flip_h = false

	if Input.is_action_pressed("left"):
		animation.flip_h = true
		
#func _on_item_collected():
	#items_collected += 1
	#update_ui()  # Atualiza a UI com a nova contagem

#func update_ui():
	# Atualize o Label ou outro nó da UI com a contagem de itens
	#$UI/ItemCountLabel.text = str(items_collected)

func _on_area_2d_3_item_collected(): 
	items_collected += 1
#	update_ui()
	pass # Replace with function body.
