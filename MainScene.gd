extends Node2D

var is_game_over = false

func _ready():
	$Timer.wait_time = 3.0
	$Timer.start()
	print('Start!')


func _on_timer_timeout():
	is_game_over = true
	print('Gameover')
	
func add_time():
	if not is_game_over:
		$Timer.wait_time = $Timer.time_left + 2.0
		$Timer.start()
		print('Star')
