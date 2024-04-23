extends CharacterBody2D

@export var move_speed = 250.0
@onready var animacoes:AnimationPlayer = get_node("AnimationPlayer")

func _physics_process(_delta:float)->void:
	animate()

func animate()->void:
	if velocity != Vector2.ZERO:
		pass
	else:
		animacoes.play("idle")

func ataque()->bool:
	if input.is_action_pressed("attack"):
		return true
	return false
