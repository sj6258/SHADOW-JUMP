extends Node

@onready var score_label_2: Label = $ScoreLabel2


var score = 0

@onready var score_label: Label = $ScoreLabel


func add_score():
	
	score += 1
	
	score_label.text = "Total Coins : " + str(score) + " / 45"
	score_label_2.text = "Total Coins : " + str(score) + "/ 20"
