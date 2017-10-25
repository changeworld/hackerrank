#!/bin/ruby

q = gets.strip.to_i
for _ in (0..q-1)
  x,y,z = gets.strip.split.map(&:to_i)
  puts 'Cat A' if (x - z).abs < (y - z).abs
  puts 'Cat B' if (x - z).abs > (y - z).abs
  puts 'Mouse C' if (x - z).abs == (y - z).abs
end
