#!/bin/ruby

def encryption(s)
  s.shift.zip(*s)
end

s = gets.strip
x = Math.sqrt(s.size).ceil
puts encryption(s.chars.each_slice(x).to_a).map(&:join)*' '
