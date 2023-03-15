extends Area2D
var speed = Vector2(582, 269)
var startPosition = Vector2(0,0)

#game resets when receding left and right walls
func _gameReset():
	position = startPosition

#hit with any other Area2D node
func _hit():
	speed.y = rand_range(-500, 500)
	speed.x *= -1
	#speed.y *= 1

func _ready():
	startPosition = position
	
func _process(delta):
	translate(speed*delta)
	
	if global_position.x > 1264 or global_position.x < 16:
		_gameReset()
		
	if global_position.y > 704 or global_position.y < 16:
		speed.y *= -1
		print("Collision")


func _on_ball_area_entered(_area):
	_hit()
