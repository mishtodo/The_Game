extends Area2D

func _on_body_entered(body):
	var is_game_over = get_parent().is_game_over
	
	if not is_game_over:
		get_parent().add_time()
		queue_free()
