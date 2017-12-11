#!/bin/ruby

n, k = gets.strip.split.map(&:to_i)
ar = gets.strip.split.map(&:to_i)
b = gets.strip.to_i
total = ar.inject{|sum, n| sum + n}
actual = (total - ar[k])/2.to_i
if b == actual
  puts 'Bon Appetit'
else
  puts b - actual
end
