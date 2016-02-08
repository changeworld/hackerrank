#!/bin/ruby
n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
  a_t = gets.strip
  a[a_i] = a_t.split.map(&:to_i)
end
p n.times.reduce(0){|sum, i| sum + a[i][i] - a[i][n-1-i]}.abs
