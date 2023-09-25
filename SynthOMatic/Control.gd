extends Control

# Declare member variables here.
onready var play_bar: HSlider = $PlayBar
onready var play: Button = $Play
onready var bass: GridContainer = $Bass
onready var drums: GridContainer = $Drums
onready var synth_chord: GridContainer = $SynthChord

var current_track = 0  # Keeps track of the currently playing track
var bass_playing = false  # Variable to track bass playing status
var drums_playing = false
var synth_playing = false

func _on_Play_pressed() -> void:
	# Stop playback on all instances of AudioStreamPlayers first

	stop_all_tracks()

	# Reset bass_playing variable
	bass_playing = false
	drums_playing = false
	synth_playing = false
	# Start playing the first track of each instrument
	current_track = 0

	update_current_track(0)
	play_bar.value = 0

func stop_all_tracks() -> void:
	# Stop playback on all instances of AudioStreamPlayers for each instrument

	for i in range(0, 21):  # Assuming you have 20 tracks for each instrument
		var bass_track_path = "Bass/Bass" + str(i) + "/Bass" + str(i)
		var drums_track_path = "Drums/Drums" + str(i) + "/Drums" + str(i)
		var synth_track_path = "SynthChord/SynthChord" + str(i) + "/SynthChord" + str(i)
		
		get_node(bass_track_path).playing = false
		get_node(drums_track_path).playing = false
		get_node(synth_track_path).playing = false

func play_current_track() -> void:
	if current_track >= 0 and current_track <= 20:
		var bass_track_path = "Bass/Bass" + str(current_track) + "/Bass" + str(current_track)
		var drums_track_path = "Drums/Drums" + str(current_track) + "/Drums" + str(current_track)
		var synth_track_path = "SynthChord/SynthChord" + str(current_track) + "/SynthChord" + str(current_track)
		
		get_node(bass_track_path).playing = true
		get_node(drums_track_path).playing = true
		get_node(synth_track_path).playing = true

func update_current_track(track_number: int) -> void:
	# This function will be called when a track finishes playing
	# Update the current_track variable and play the next track
	current_track = track_number
	play_current_track()
	
# Bass Tracks -- For funsies, I'll just say that the bass decides the HSlider Value

func _on_Bass0_finished() -> void:
	if !bass_playing:
		update_current_track(1)
		play_bar.value = 0
		bass_playing = true

func _on_Bass1_finished() -> void:
	if bass_playing:
		update_current_track(2)
	play_bar.value += 1

func _on_Bass2_finished() -> void:
	if bass_playing:
		update_current_track(3)
	play_bar.value += 1
	
func _on_Bass3_finished() -> void:
	if bass_playing:
		update_current_track(4)
	play_bar.value += 1
	
func _on_Bass4_finished() -> void:
	if bass_playing:
		update_current_track(5)
	play_bar.value += 1
	
func _on_Bass5_finished() -> void:
	if bass_playing:
		update_current_track(6)
	play_bar.value += 1
	
func _on_Bass6_finished() -> void:
	if bass_playing:
		update_current_track(7)
	play_bar.value += 1
	
func _on_Bass7_finished() -> void:
	if bass_playing:
		update_current_track(8)
	play_bar.value += 1

func _on_Bass8_finished() -> void:
	if bass_playing:
		update_current_track(9)
	play_bar.value += 1

func _on_Bass9_finished() -> void:
	if bass_playing:
		update_current_track(10)
	play_bar.value += 1
	
func _on_Bass10_finished() -> void:
	if bass_playing:
		update_current_track(11)
	play_bar.value += 1

func _on_Bass11_finished() -> void:
	if bass_playing:
		update_current_track(12)
	play_bar.value += 1

func _on_Bass12_finished() -> void:
	if bass_playing:
		update_current_track(13)
	play_bar.value += 1

func _on_Bass13_finished() -> void:
	if bass_playing:
		update_current_track(14)
	play_bar.value += 1

func _on_Bass14_finished() -> void:
	if bass_playing:
		update_current_track(15)
	play_bar.value += 1

func _on_Bass15_finished() -> void:
	if bass_playing:
		update_current_track(16)
	play_bar.value += 1

func _on_Bass16_finished() -> void:
	if bass_playing:
		update_current_track(17)
	play_bar.value += 1

func _on_Bass17_finished() -> void:
	if bass_playing:
		update_current_track(18)
	play_bar.value += 1

func _on_Bass18_finished() -> void:
	if bass_playing:
		update_current_track(19)
	play_bar.value += 1

func _on_Bass19_finished() -> void:
	if bass_playing:
		update_current_track(20)
	play_bar.value += 1

func _on_Bass20_finished() -> void:
	play_bar.value = 0
	bass_playing = false


# Drums Here

func _on_Drums0_finished() -> void:
	if !drums_playing:
		update_current_track(1)
		drums_playing = true

func _on_Drums1_finished() -> void:
	if drums_playing:
		update_current_track(2)
	

func _on_Drums2_finished() -> void:
	if drums_playing:
		update_current_track(3)
	
	
func _on_Drums3_finished() -> void:
	if drums_playing:
		update_current_track(4)
	
	
func _on_Drums4_finished() -> void:
	if drums_playing:
		update_current_track(5)
	
	
func _on_Drums5_finished() -> void:
	if drums_playing:
		update_current_track(6)
	
	
func _on_Drums6_finished() -> void:
	if drums_playing:
		update_current_track(7)
	
	
func _on_Drums7_finished() -> void:
	if drums_playing:
		update_current_track(8)
	

func _on_Drums8_finished() -> void:
	if drums_playing:
		update_current_track(9)
	

func _on_Drums9_finished() -> void:
	if drums_playing:
		update_current_track(10)
	
	
func _on_Drums10_finished() -> void:
	if drums_playing:
		update_current_track(11)
	

func _on_Drums11_finished() -> void:
	if drums_playing:
		update_current_track(12)
	

func _on_Drums12_finished() -> void:
	if drums_playing:
		update_current_track(13)
	

func _on_Drums13_finished() -> void:
	if drums_playing:
		update_current_track(14)
	

func _on_Drums14_finished() -> void:
	if drums_playing:
		update_current_track(15)
	

func _on_Drums15_finished() -> void:
	if drums_playing:
		update_current_track(16)
	

func _on_Drums16_finished() -> void:
	if drums_playing:
		update_current_track(17)
	

func _on_Drums17_finished() -> void:
	if drums_playing:
		update_current_track(18)
	

func _on_Drums18_finished() -> void:
	if drums_playing:
		update_current_track(19)
	

func _on_Drums19_finished() -> void:
	if drums_playing:
		update_current_track(20)
	

func _on_Drums20_finished() -> void:
	play_bar.value = 0
	drums_playing = false



# Synth Chord


func _on_SynthChord0_finished() -> void:
	if !synth_playing:
		update_current_track(1)
		synth_playing = true

func _on_SynthChord1_finished() -> void:
	if synth_playing:
		update_current_track(2)
		
func _on_SynthChord2_finished() -> void:
	if synth_playing:
		update_current_track(3)
	
func _on_SynthChord3_finished() -> void:
	if synth_playing:
		update_current_track(4)
	
func _on_SynthChord4_finished() -> void:
	if synth_playing:
		update_current_track(5)
	
func _on_SynthChord5_finished() -> void:
	if synth_playing:
		update_current_track(6)
	
func _on_SynthChord6_finished() -> void:
	if synth_playing:
		update_current_track(7)
	
func _on_SynthChord7_finished() -> void:
	if synth_playing:
		update_current_track(8)
	
func _on_SynthChord8_finished() -> void:
	if synth_playing:
		update_current_track(9)
	
func _on_SynthChord9_finished() -> void:
	if synth_playing:
		update_current_track(10)
	
func _on_SynthChord10_finished() -> void:
	if synth_playing:
		update_current_track(11)
	
func _on_SynthChord11_finished() -> void:
	if synth_playing:
		update_current_track(12)
	
func _on_SynthChord12_finished() -> void:
	if synth_playing:
		update_current_track(13)
	
func _on_SynthChord13_finished() -> void:
	if synth_playing:
		update_current_track(14)
	
func _on_SynthChord14_finished() -> void:
	if synth_playing:
		update_current_track(15)
	
func _on_SynthChord15_finished() -> void:
	if synth_playing:
		update_current_track(16)
	
func _on_SynthChord16_finished() -> void:
	if synth_playing:
		update_current_track(17)
	
func _on_SynthChord17_finished() -> void:
	if synth_playing:
		update_current_track(18)
	
func _on_SynthChord18_finished() -> void:
	if synth_playing:
		update_current_track(19)
	
func _on_SynthChord19_finished() -> void:
	if synth_playing:
		update_current_track(20)
	
func _on_SynthChord20_finished() -> void:
	play_bar.value = 0
	synth_playing = false







func _on_Stop_pressed() -> void:
	stop_all_tracks()
	bass_playing = false
	drums_playing = false
	synth_playing = false
