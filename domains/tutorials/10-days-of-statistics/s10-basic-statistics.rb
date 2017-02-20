#!/bin/ruby

n = gets.to_i
x = gets.split.map(&:to_i).sort
cnt = Hash.new(0)
mean = x.reduce(:+).to_f/n
median = n%2 == 1 ? x[x.size/2] : (x[x.size/2 -1]+x[x.size/2]).to_f/2
mode = x.inject(Hash.new(0)){|r, i| r[i] += 1; r}.max{|x, y| x[1] <=> y[1]}[0]
puts sprintf("%.1f", mean)
puts sprintf("%.1f", median)
puts mode
