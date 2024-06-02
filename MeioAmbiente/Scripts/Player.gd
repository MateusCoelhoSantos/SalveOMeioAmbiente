extends CharacterBody2D

@export var speed = 180
@onready var animation := $AnimaHolly as AnimatedSprite2D

func _ready():
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
	
func _process(delta):
	if Input.is_action_pressed("right"):
		animation.flip_h = false

	if Input.is_action_pressed("left"):
		animation.flip_h = true
		
