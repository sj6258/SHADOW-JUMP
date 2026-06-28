extends Control

@onready var main_buttons: VBoxContainer = $MainButtons
@onready var options: Panel = $Options



func _ready() -> void:
	main_buttons.visible = true
	options.visible = false

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Back"):
		get_tree().quit()


func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")


func _on_button_4_pressed() -> void:
	main_buttons.visible = false
	options.visible = true



func _on_back_option_pressed() -> void:
	_ready()
