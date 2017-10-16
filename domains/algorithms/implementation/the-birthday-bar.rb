#!/bin/ruby

def solve(n, s, d, m)
  s.each_cons(m).map(&:sum).select {|sum| sum == d}.count
end

n = gets.strip.to_i
s = gets.strip.split.map(&:to_i)
d, m = gets.strip.split.map(&:to_i)
result = solve(n, s, d, m)
puts result;
