#!/bin/ruby

s = gets.strip.to_i
e = gets.strip.to_i
answer = Array.new
s.upto(e){|i|
  square = i**2
  digits = i.to_s.length
  split_digits = square.to_s.reverse.chars.each_slice(digits).map{|a| a.join.reverse.to_i}
  answer.push(i) if i == split_digits.inject(0){|sum, x| sum + x}
}
if answer.length == 0
  puts "INVALID RANGE"
else
  puts answer.join(' ')
end
