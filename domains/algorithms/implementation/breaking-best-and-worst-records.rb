#!/bin/ruby

def getRecord(s)
  cnt_max = 0
  cnt_min = 0
  max = s[0]
  min = s[0]
  s.length.times do |i|
    if (s[i] > max)
      max = s[i]
      cnt_max = cnt_max + 1
    end
    if (s[i] < min)
      min = s[i]
      cnt_min = cnt_min + 1
    end
  end
  [cnt_max, cnt_min]
end

n = gets.strip.to_i
s = gets.strip.split.map(&:to_i)
result = getRecord(s)
print result.join(" ")
