extends KinematicBody2D

onready var image_player = get_node("Chibi1")

var speed = 15
var jupm_force = 500
var gravity = 400

var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("player_left"):
		velocity.x -= speed
	if Input.is_action_pressed("player_right"):
		velocity.x += speed
	
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("player_jump") and is_on_floor():
		velocity.y -= jupm_force
	
	move_and_slide(velocity, Vector2.UP, false, 1)
	
	if velocity.x > 0:
		image_player.flip_h = false
	if velocity.x < 0:
		image_player.flip_h = true
