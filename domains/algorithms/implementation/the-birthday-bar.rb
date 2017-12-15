#!/bin/ruby

n = gets.strip.to_i
s = gets.strip.split.map(&:to_i)
d, m = gets.strip.split.map(&:to_i)
puts s.each_cons(m).map(&:sum).select {|sum| sum == d}.count
