extends Node2D

onready var player := $AudioStreamPlayer2D


func _ready() -> void:
	player.play()
