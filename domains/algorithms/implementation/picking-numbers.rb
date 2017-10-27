#!/bin/ruby

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
max = 0
for i in 0..a.length-1 do
  x = a.count{|num| num == a[i]}
  y = a.count{|num| num == a[i]+1}
  cnt = x + y
  max = cnt if cnt > max
end
p max
