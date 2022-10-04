extends Node2D

onready var player := $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player.play()
