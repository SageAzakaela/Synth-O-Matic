extends Button

var current_loop = -1

var muted = preload("res://Muted8Seconds.wav")
var loop1 = preload("res://SynthChord/segment_0_8000.ogg")
var loop2 = preload("res://SynthChord/segment_8000_16000.ogg")
var loop3 = preload("res://SynthChord/segment_16000_24000.ogg")
var loop4 = preload("res://SynthChord/segment_24000_32000.ogg")
var loop5 = preload("res://SynthChord/segment_32000_40000.ogg")
var loop6 = preload("res://SynthChord/segment_40000_48000.ogg")
var loop7 = preload("res://SynthChord/segment_48000_56000.ogg")
var loop8 = preload("res://SynthChord/segment_56000_64000.ogg")
var loop9 = preload("res://SynthChord/segment_64000_72000.ogg")
var loop10 = preload("res://SynthChord/segment_72000_80000.ogg")
var loop11 = preload("res://SynthChord/segment_80000_88000.ogg")
var loop12 = preload("res://SynthChord/segment_88000_96000.ogg")
var loop13 = preload("res://SynthChord/segment_96000_104000.ogg")
var loop14 = preload("res://SynthChord/segment_104000_112000.ogg")
var loop15 = preload("res://SynthChord/segment_112000_120000.ogg")
var loop16 = preload("res://SynthChord/segment_120000_128000.ogg")
var loop17 = preload("res://SynthChord/segment_128000_136000.ogg")
var loop18 = preload("res://SynthChord/segment_136000_144000.ogg")
func _ready() -> void:
	get_child(0).stream = muted

func _on_SynthChord_pressed() -> void:
	current_loop += 1
	if current_loop >= 18:
		current_loop = -1
		text = "X"
		get_child(0).stream = muted
	elif current_loop == 0:
		text = "1"
		get_child(0).stream = loop1
	elif current_loop == 1:
		text = "1"
		get_child(0).stream = loop2
	elif current_loop == 2:
		text = "2"
		get_child(0).stream = loop3
	elif current_loop == 3:
		text = "3"
		get_child(0).stream = loop4
	elif current_loop == 4:
		text = "4"
		get_child(0).stream = loop5
	elif current_loop == 5:
		text = "5"
		get_child(0).stream = loop6
	elif current_loop == 6:
		text = "6"
		get_child(0).stream = loop7
	elif current_loop == 7:
		text = "7"
		get_child(0).stream = loop8
	elif current_loop == 8:
		text = "8"
		get_child(0).stream = loop9
	elif current_loop == 9:
		text = "9"
		get_child(0).stream = loop10
	elif current_loop == 10:
		text = "10"
		get_child(0).stream = loop11
	elif current_loop == 11:
		text = "11"
		get_child(0).stream = loop12
	elif current_loop == 12:
		text = "12"
		get_child(0).stream = loop13
	elif current_loop == 13:
		text = "13"
		get_child(0).stream = loop14
	elif current_loop == 14:
		text = "14"
		get_child(0).stream = loop15
	elif current_loop == 15:
		text = "15"
		get_child(0).stream = loop16
	elif current_loop == 16:
		text = "16"
		get_child(0).stream = loop17
	elif current_loop == 17:
		text = "17"
		get_child(0).stream = loop18
