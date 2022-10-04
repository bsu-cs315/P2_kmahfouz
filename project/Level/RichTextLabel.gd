extends Label


func _process(_delta: float) -> void:
	text = "Time elapsed: " + str($Timer.get_time_left())
