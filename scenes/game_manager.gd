extends Node

@onready var score_label_2: Label = $ScoreLabel2
@onready var score_label_3: Label = $ScoreLabel3


var score = 0

@onready var score_label: Label = $ScoreLabel


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Back"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func add_score():
	
	score += 1
	
	score_label.text = "Total Coins : " + str(score) + " / 45"
	score_label_2.text = "Total Coins : " + str(score) + "/ 20"
	score_label_3.text = "Total Coins : " + str(score) + "/ 42"
