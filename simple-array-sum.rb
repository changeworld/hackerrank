#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
num = 0
arr.split.map(&:to_i).each_with_index do |val, index|
  num += val if index < n
end
puts num
