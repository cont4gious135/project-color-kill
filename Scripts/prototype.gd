extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func death():
	$BufferTimer.start()
	get_tree().paused = true
	$Player/PlayerCollisionShape2D.queue_free()
	
	
	



func _on_buffer_timer_timeout() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
