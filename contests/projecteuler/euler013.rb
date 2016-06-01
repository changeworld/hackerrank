#!/bin/ruby
i = 0
gets.strip.to_i.times{
  n = gets.to_i
  i+=n
}
puts i.to_s[0,10]
