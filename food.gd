extends Area2D

const HEAL_AMOUNT = 10.0

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body.has_method("heal"):
		body.heal(HEAL_AMOUNT)
		queue_free()
