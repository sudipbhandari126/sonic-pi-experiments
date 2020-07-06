
live_loop :loop do
  use_synth :prophet
  play :c4, release: 2, attack: 1
  sleep 0.25
  play :f5, release: 2
  sleep 0.25
  play :g5
  sleep 0.25
end


live_loop :beat do
  sample :bd_haus, amp: 2
  sleep 0.5
end
