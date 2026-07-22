class_name InstructionsScreen extends Control

@export var next_scene: PackedScene
@export var ordered_text: Array[Control]
@onready var timer: Timer = %Timer

var proceeding: bool = false


# ENGINE
func _ready():
	MusicManager.stop()

func _input(event: InputEvent) -> void:
	if event is InputEventKey and !proceeding:
		proceeding = true
		if next_scene:
			SceneManager.new_scene(next_scene)
		else:
			SceneManager.quit_to_menu()


# PUBLIC


# PRIVATE


# SIGNALS
func _on_timer_timeout() -> void:
	var next: Control = ordered_text.pop_front()
	if next is ImpactLabel:
		next.show_anim()
	else:
		next.show()
	if ordered_text.is_empty():
		timer.stop()
