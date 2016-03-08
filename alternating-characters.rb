#!/bin/ruby
gets.strip.to_i.times{
  b_str = gets.chomp.to_s
  a_str = b_str.squeeze
  puts b_str.length - a_str.length
}
