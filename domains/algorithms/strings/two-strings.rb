#!/bin/ruby
require 'set'

gets.strip.to_i.times{
  s1 = gets.strip
  s2 = gets.strip
  x = Set.new(s1.split(''))
  y = Set.new(s2.split(''))
  puts (x & y).empty? ? 'NO' : 'YES'
}
