#!/bin/ruby

s = gets.strip
t = gets.strip
k = gets.strip.to_i

if s.length + t.length < k
  puts 'Yes'
  return
end

same_len = [s.length, t.length].min
for i in 0..(same_len-1)
  if s[i] != t[i]
    same_len = i
    break
  end
end

diff_cnt = s.length + t.length - same_len * 2

if (diff_cnt <= k and (diff_cnt - k) % 2 == 0)
  puts 'Yes'
else
  puts 'No'
end
