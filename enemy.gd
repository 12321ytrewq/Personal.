extends RigidBody2D

var speed = 100
var direction = -1

func _ready() -> void:
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	self.linear_velocity.x = speed * direction



func _on_timer_timeout() -> void:
	direction *= -1




func _on_body_shape_entered(_body_rid: RID, body: Node, _body_shape_index: int, _local_shape_index: int) -> void:
	if body.is_in_group("Player"):
		body.queue_free()
		OS.alert("You Died!")
		get_tree().reload_current_scene()
