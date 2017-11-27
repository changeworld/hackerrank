#!/bin/ruby

def anagram(s)
  return -1 if s.size % 2 == 1
  cnt = 0
  s1, s2 = s[0, s.size/2], s[s.size/2, s.size-1]
  s1.chars{|c1|
    if s2.include?(c1)
      s2.slice!(c1)
    else
      cnt += 1
    end
  }
  cnt
end

t = gets.strip.to_i
for _ in (0..t-1)
  s = gets.strip
  puts anagram(s)
end
