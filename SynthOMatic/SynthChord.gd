extends GridContainer


func _ready() -> void:
	randomize()

func _on_LABEL_pressed() -> void:
	for child in get_children():
		if child is Button and child.name != "LABEL" and child.name != "SynthChord0":
			var synthchord_measure_button = child as Button
			var random_presses = randi() % 32  # Generate a random number of presses between 0 and 9
			for b in range(random_presses):
				synthchord_measure_button._on_SynthChord_pressed()
