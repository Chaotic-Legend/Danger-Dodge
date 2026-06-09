extends Node2D

@onready var ui_container: CenterContainer = $UI/CenterContainer
@onready var ui_box: VBoxContainer = $UI/CenterContainer/VBoxContainer
@onready var start_label: Label = $UI/CenterContainer/VBoxContainer/StartLabel
@onready var you_win_label: Label = $UI/CenterContainer/VBoxContainer/YouWinLabel
@onready var pause_label: Label = $UI/CenterContainer/VBoxContainer/PauseLabel
@onready var play_again_button: Button = $UI/CenterContainer/VBoxContainer/PlayAgainButton
var game_started := false
var game_won := false

func _ready() -> void:
	get_tree().paused = false
	process_mode = Node.PROCESS_MODE_ALWAYS
	set_gameplay_process_mode(Node.PROCESS_MODE_PAUSABLE)
	start_label.visible = true
	you_win_label.visible = false
	pause_label.visible = false
	play_again_button.visible = false
	$Player.can_move = false
	BGMusic.process_mode = Node.PROCESS_MODE_ALWAYS
	BGMusic.stream_paused = false
	BGMusic.stop()
	BGMusic.play()
	if not BGMusic.finished.is_connected(_on_bg_music_finished):
		BGMusic.finished.connect(_on_bg_music_finished)
	await get_tree().create_timer(2.0).timeout
	start_label.visible = false
	$Player.can_move = true
	game_started = true

func set_gameplay_process_mode(mode: Node.ProcessMode) -> void:
	$Player.process_mode = mode
	$Enemies.process_mode = mode
	$Background.process_mode = mode
	$WinArea.process_mode = mode

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("quit"):
		get_tree().quit()
	if event.is_action_pressed("reset"):
		reset_game()
		return
	if event.is_action_pressed("pause"):
		toggle_pause()

func toggle_pause() -> void:
	if not game_started or game_won:
		return
	get_tree().paused = !get_tree().paused
	pause_label.visible = get_tree().paused
	BGMusic.stream_paused = get_tree().paused

func reset_game() -> void:
	BGMusic.stop()
	BGMusic.stream_paused = false
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_bg_music_finished() -> void:
	BGMusic.play()

func _on_win_area_body_entered(body: Node2D) -> void:
	if body is Player:
		game_won = true
		get_tree().paused = false
		BGMusic.stream_paused = false
		pause_label.visible = false
		body.queue_free()
		you_win_label.visible = true
		play_again_button.visible = true

func _on_play_again_button_pressed() -> void:
	reset_game()
