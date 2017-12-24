#!/bin/ruby

n = Hash.new(0)
m = Hash.new(0)
_ = gets
gets.split.each{|i| n[i.to_i] += 1}
_ = gets
gets.split.each{|i| m[i.to_i] += 1}
puts n.keys.sort.select{|x| m[x] > n[x]}*' '
