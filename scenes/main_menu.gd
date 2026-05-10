extends Control

@onready var button_2: Button = $Button2
@onready var button: Button = $Button


func _ready() -> void:
	pass 


func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")
