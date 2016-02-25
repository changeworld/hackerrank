#!/bin/ruby
h = Hash.new(0)
_ = gets.strip.to_i
n = gets.strip.split.map(&:to_i).each{|a| h[a]+=1}
puts h.select{|k, v| v == 1}.map(&:first)
