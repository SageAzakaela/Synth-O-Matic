from pydub import AudioSegment
import os

def trim_audio(input_file, output_directory):
    audio = AudioSegment.from_file(input_file)
    duration = len(audio)
    interval = 8000  # milliseconds

    for start_time in range(0, duration, interval):
        end_time = start_time + interval
        if end_time > duration:
            end_time = duration

        trimmed_audio = audio[start_time:end_time]
        output_file = os.path.join(output_directory, f"segment_{start_time}_{end_time}.wav")
        trimmed_audio.export(output_file, format="wav")
        print(f"Exported {output_file}")

if __name__ == "__main__":
    input_audio_file = "DrumKit_1 [2023-09-21 155935].wav"
    output_folder = "DrumKit"

    os.makedirs(output_folder, exist_ok=True)
    trim_audio(input_audio_file, output_folder)