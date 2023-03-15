extends Area2D

var speed = 560

func _process(delta):
	
	#Bat goes UP
	if Input.is_action_pressed("game_up") and global_position.y > 69:
		move_local_y(-speed * delta)
	
	#Bat goes DOWN
	if Input.is_action_pressed("game_down") and global_position.y < 652:
		move_local_y(speed * delta)
