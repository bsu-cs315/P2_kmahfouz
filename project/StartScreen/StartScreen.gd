extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var button = get_node("CanvasLayer/Button")
	button.connect("pressed", self,"_on_Button_pressed")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _on_Button_pressed():
	queue_free()
