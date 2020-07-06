

notes = (scale :C, :dorian).shuffle.ring

times = [0.25,0.5]

live_loop :melody_line do
  use_synth :square
  note = notes.tick
  timing = times.choose
  play note, release: timing
  sleep timing
end




live_loop :snare do
  sample :drum_snare_hard, amp: 0.1
  sleep 0.5
end

live_loop :bass do
  sample :drum_bass_hard, amp: 1.5
  sleep 2
end




droning_chords = [(chord :E, :maj), (chord :C, :maj), (chord :G, :maj)]

live_loop :chord_function do
  play droning_chords.choose, attack: 1,  amp: 2
  sleep 1
end


scale_run_amp = [1,2,3].ring
live_loop :scale_run do
  play_pattern_timed scale(:c3, :major), 0.125, release: 0.1, amp: scale_run_amp.tick
end





