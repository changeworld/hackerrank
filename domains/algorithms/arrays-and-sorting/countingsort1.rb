#!/bin/ruby

_ = gets
k = [0]*100
gets.strip.split.each{|x| k[x.to_i] += 1}
puts k.join ' '
