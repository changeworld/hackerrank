#!/bin/ruby

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  puts s.match(/.*h.*a.*c.*k.*e.*r.*r.*a.*n.*k/) ? 'YES' : 'NO'
end
