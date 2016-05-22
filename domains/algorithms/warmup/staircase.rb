#!/bin/ruby
n = gets.strip.to_i
n.times{|i|
  puts ' '*(n-1-i)+'#'*(i+1)
}
