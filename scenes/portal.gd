extends Area2D

@onready var teleport_sound: AudioStreamPlayer2D = $TeleportSound



func _on_body_entered(_body: Node2D) -> void:
	teleport_sound.play()
	get_tree().call_deferred("change_scene_to_file", "res://scenes/main_menu.tscn")
