extends Node2D

func _ready():
	$StartLabel.visible = true
	$YouWinLabel.visible = false
	$Player.can_move = false
	await get_tree().create_timer(2.0).timeout
	$StartLabel.visible = false
	$Player.can_move = true

func _on_win_area_body_entered(body: Node2D) -> void:
	if body is Player:
		body.queue_free()
		$YouWinLabel.visible = true

func _process(_delta):
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
