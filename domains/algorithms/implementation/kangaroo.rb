#!/bin/ruby

x1, v1, x2, v2 = gets.strip.split.map(&:to_i)
if (x1 > x2 and v1 >= v2) or (x1 < x2 and v1 <= v2) or (x1-x2).abs % (v1-v2).abs != 0
  puts 'NO'
else
  puts 'YES'
end
