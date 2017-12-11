#!/bin/ruby

n = gets.strip.to_i
s = gets.strip.split.map(&:to_i)
cnt_max, cnt_min = 0, 0
max, min = s[0], s[0]
s.length.times {|i|
  if (s[i] > max)
    max = s[i]
    cnt_max = cnt_max + 1
  end
  if (s[i] < min)
    min = s[i]
    cnt_min = cnt_min + 1
  end
}
puts [cnt_max, cnt_min].join(" ")
