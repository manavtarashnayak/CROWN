extends Node

enum Lifepath { NONE, SCAVENGER, INITIATE }

var current_path: Lifepath = Lifepath.NONE

func select_path(path: Lifepath) -> void:
	current_path = path
	match current_path:
		Lifepath.SCAVENGER:
			get_tree().change_scene_to_file("res://scenes/stages/stage_1_scavenger/stage_1_scavenger.tscn")
		Lifepath.INITIATE:
			get_tree().change_scene_to_file("res://scenes/stages/stage_2_initiate/stage_2_initiate.tscn")
