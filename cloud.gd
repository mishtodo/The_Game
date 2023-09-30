extends StaticBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	var sprite = get_node("Cloud2")
	var flip_h = get_meta("flip_h", false)
	if (flip_h): sprite.flip_h = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
