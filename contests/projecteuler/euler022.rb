#!/bin/ruby
arr = gets.strip.to_i.times.map{gets.chomp}.sort
gets.strip.to_i.times{
  name = gets.chomp
  idx = arr.index(name)+1
  x = 0
  name.each_byte{|n| x+=n-64}
  p x*idx
}
