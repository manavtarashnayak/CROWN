extends Control

@onready var scavenger_button: Button = $MarginContainer/VBoxContainer/PathOptions/ScavengerButton
@onready var initiate_button: Button = $MarginContainer/VBoxContainer/PathOptions/InitiateButton

func _ready() -> void:
	scavenger_button.pressed.connect(_on_scavenger_pressed)
	initiate_button.pressed.connect(_on_initiate_pressed)

func _on_scavenger_pressed() -> void:
	GameState.select_path(GameState.Lifepath.SCAVENGER)

func _on_initiate_pressed() -> void:
	GameState.select_path(GameState.Lifepath.INITIATE)
