#!/bin/ruby

n = gets.to_i
x = gets.split.map(&:to_i)
w = gets.split.map(&:to_i)
weighted = x.each_with_index.reduce(0){|sum, (v, i)|
  sum += v.to_f * w[i]
}
puts sprintf("%.1f", weighted/w.reduce(:+))
