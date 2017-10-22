#!/bin/ruby

def solve(n, p)
  [p/2,n/2-p/2].min
end

n = gets.strip.to_i
p = gets.strip.to_i
result = solve(n, p)
puts result;
