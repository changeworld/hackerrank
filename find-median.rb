#!/bin/ruby
gets
m = gets.strip.split.map(&:to_i).sort
p m[m.size/2]
