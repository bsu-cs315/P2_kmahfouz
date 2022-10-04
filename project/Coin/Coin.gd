extends Area2D

var sound_played := false
onready var player = $AudioStreamPlayer2D

func _on_Coin_body_entered(_body: Node) -> void:
	player.play()
	yield()
	queue_free()
