#!/bin/ruby
require 'set'

def twoStrings(s1, s2)
  x = Set.new(s1.split(''))
  y = Set.new(s2.split(''))
  (x & y).empty? ? 'NO' : 'YES'
end

gets.strip.to_i.times{
  s1 = gets.strip
  s2 = gets.strip
  puts twoStrings(s1, s2)
}
