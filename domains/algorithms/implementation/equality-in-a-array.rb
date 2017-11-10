#!/bin/ruby

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
max = 0
a.sort.uniq.each{|i| max = a.count(i) if max < a.count(i)}
p n - max
