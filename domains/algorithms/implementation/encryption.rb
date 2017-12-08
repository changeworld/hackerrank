#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def encryption(arr)
  arr.shift.zip(*arr)
end

s = gets.strip
x = Math.sqrt(s.size).ceil
puts encryption(s.chars.each_slice(x).to_a).map(&:join)*' '
