#!/bin/ruby

def saveThePrisoner(n, m, s)
  ((m+s-2)%n)+1
end

t = gets.strip.to_i
for a0 in (0..t-1)
  n, m, s = gets.strip.split.map(&:to_i)
  result = saveThePrisoner(n, m, s)
  puts result
end
