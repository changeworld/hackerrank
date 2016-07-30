#!/bin/ruby
gets.strip.to_i.times{
  s = gets.chomp
  arr = s.bytes.each_cons(2).map{|a| (a[0] - a[1]).abs}
  puts arr == arr.reverse ? 'Funny' : 'Not Funny'
}
