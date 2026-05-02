extends CharacterBody2D
class_name Player

var my_variable = Vector2(10, 8)
var speed = 300.0
var spawn_point = Vector2(60, 360)
var can_move := false

func _physics_process(_delta: float) -> void:
	if not can_move:
		velocity = Vector2.ZERO
		move_and_slide()
		return
	var direction = Vector2(0,0)
	if Input.is_action_pressed("move_right"):
		direction.x = 1
	if Input.is_action_pressed("move_left"):
		direction.x = -1
	if Input.is_action_pressed("move_up"):
		direction.y = -1
	if Input.is_action_pressed("move_down"):
		direction.y = 1
	
	direction = direction.normalized()
	velocity = direction * speed
	move_and_slide()

func reset_player():
	global_position = spawn_point
	$HitSound.play()
