extends GridContainer


func _ready() -> void:
	randomize()

func _on_LABEL_pressed() -> void:
	for child in get_children():
		if child is Button and child.name != "LABEL" and child.name != "Drums0":
			var drums_measure_button = child as Button
			var random_presses = randi() % 32  # Generate a random number of presses between 0 and 9
			for b in range(random_presses):
				drums_measure_button._on_Drums_pressed()
