#!/bin/ruby
n = gets.strip.to_i
arr = gets.strip.split.map(&:to_i)
h = Hash.new(0)
arr.each{|x| h[x<=>0] +=1}
p h[1].to_f/arr.size
p h[-1].to_f/arr.size
p h[0].to_f/arr.size
