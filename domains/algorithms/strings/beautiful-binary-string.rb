#!/bin/ruby

def minSteps(n, b)
  b.scan(/010/).size
end

n = gets.strip.to_i
b = gets.strip
result = minSteps(n, b)
puts result
