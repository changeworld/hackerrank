#!/bin/ruby

n = gets.strip.to_i
ar = gets.strip.split.map(&:to_i)
num = 0
ar.inject(Hash.new(0)){|k, i| k[i] += 1; k}.each_value{|f| num += f/2}
puts num
