#!/bin/ruby

h = Hash.new
for i in 1..(gets.to_i)
  h.store i, gets.strip.split.map(&:to_i).reduce(:+)
end
puts h.sort_by{|k, v| v}.to_h.keys.join(' ')
