#!/bin/ruby

a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
x = y = 0
a.size.times {|i|
  x+=1 if a[i] > b[i]
  y+=1 if a[i] < b[i]
}

puts '%d %d'%[x,y]
