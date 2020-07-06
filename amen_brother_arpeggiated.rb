# Welcome to Sonic Pi


chords =[(chord :c, :maj), (chord :f, :maj)]

with_fx :distortion do
  
  live_loop :amen_brother do
    sample :loop_amen, rate:0.8
    sleep sample_duration :loop_amen, rate:0.8
  end
end


bass_amp = [1,3]

live_loop :alternating_bass do
  sample :glitch_bass_g, amp: bass_amp.tick
  sleep sample_duration :loop_amen, rate:0.8
end

live_loop :cowbell do
  sample :drum_cowbell, amp: 0.8
  sleep (sample_duration :loop_amen, rate:0.8)/4
end

melody_releases=[0.25,0.5,0.4,1]
melody_chords=[:E,:A,:B]

live_loop :synth_sound do
use_synth :saw
play (scale melody_chords.choose, :minor_pentatonic).choose, release: melody_releases.choose, amp: 0.5
sleep 0.1
end


 



