extends Area2D




func _on_body_entered(body: Node) -> void:
	if body.is_in_group("Player"):
		body.queue_free()
		OS.alert("You Died!")
		get_tree().reload_current_scene()
