extends GridContainer


onready var bass_1: Button = $Bass1
onready var bass_2: Button = $Bass2
onready var bass_3: Button = $Bass3
onready var bass_4: Button = $Bass4
onready var bass_5: Button = $Bass5
onready var bass_6: Button = $Bass6
onready var bass_7: Button = $Bass7
onready var bass_8: Button = $Bass8
onready var bass_9: Button = $Bass9
onready var bass_10: Button = $Bass10
onready var bass_11: Button = $Bass11
onready var bass_12: Button = $Bass12
onready var bass_13: Button = $Bass13
onready var bass_14: Button = $Bass14
onready var bass_15: Button = $Bass15
onready var bass_16: Button = $Bass16
onready var bass_17: Button = $Bass17
onready var bass_18: Button = $Bass18
onready var bass_19: Button = $Bass19
onready var bass_20: Button = $Bass20

func _ready() -> void:
	randomize()

func _on_LABEL_pressed() -> void:
	for child in get_children():
		if child is Button and child.name != "LABEL" and child.name != "Bass0":
			var bass_measure_button = child as Button
			var random_presses = randi() % 32  # Generate a random number of presses between 0 and 9
			for b in range(random_presses):
				bass_measure_button._on_BassMeasure_pressed()

