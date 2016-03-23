#!/bin/ruby
gets
arr = gets.strip.split.map(&:to_i)
p = arr.shift
f = arr.partition{|n| n < p}
puts (f[0]+[p]+f[1])*' '
