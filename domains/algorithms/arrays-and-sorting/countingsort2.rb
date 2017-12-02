#!/bin/ruby

_ = gets
k = [0]*100
gets.strip.split.each{|x| k[x.to_i] += 1}
k.each_with_index{|x,i| x.times{print i.to_s+' '}}
