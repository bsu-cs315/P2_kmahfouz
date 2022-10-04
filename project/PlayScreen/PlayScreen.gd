extends Node2D

onready var start_canvas := $StartCanvas
onready var start_button := $StartCanvas/StartButton
onready var play_again_canvas := $PlayAgainCanvas
onready var play_again_button := $PlayAgainCanvas/PlayAgainButton
onready var tree := get_tree()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var _ignored := start_button.connect("pressed", self,"_on_Start_Button_pressed")
	var _ignored2 := play_again_button.connect("pressed", self,"_on_Play_Again_Button_pressed")

func _on_Start_Button_pressed():
	start_canvas.queue_free()

func _on_Coin_body_entered(_body: Node) -> void: 
	play_again_button.disabled = false
	play_again_canvas.visible = true

func _on_Play_Again_Button_pressed():
# warning-ignore:return_value_discarded
	tree.reload_current_scene()
