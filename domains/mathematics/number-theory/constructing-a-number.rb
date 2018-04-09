#!/bin/ruby

def canConstruct(a)
  a.join.split('').map(&:to_i).sum%3 == 0 ? 'Yes' : 'No'
end

t = gets.strip.to_i
for a0 in (0..t-1)
  _ = gets.strip.to_i
  a = gets.strip.split.map(&:to_i)
  puts canConstruct(a)
end
