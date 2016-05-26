#!/bin/ruby
gets.strip.to_i.times{
  n,k = gets.strip.split.map(&:to_i)
  s = gets.chomp
  p (s.length-k-1).times.map{|i|
    s[i,k].chars.map(&:to_i).reduce(:*)
  }.max
}
