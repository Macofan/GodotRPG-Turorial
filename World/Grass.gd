extends Node2D

func _process(delta):
	if Input.is_action_just_pressed("Attack"):
		var GrassEffect = load("res://Effects/GrassEffect.tscn")
		var grassEffect = GrassEffect.instance()
		var cage = get_tree().current_scene
		cage.add_child(grassEffect)
		grassEffect.global_position = global_position
		queue_free()
