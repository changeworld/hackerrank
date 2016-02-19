#!/usr/bin/ruby
gets.strip.to_i.times{
  n = gets.strip.to_i
  a = gets.strip.to_i
  b = gets.strip.to_i
  a, b = b, a if a > b
  puts a == b ? a * (n-1) : n.times.map{|i| a * (n-1-i) + b * i}*' '
}
