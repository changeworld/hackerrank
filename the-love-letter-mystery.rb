#!/bin/ruby
gets.strip.to_i.times{
  s = gets.chomp
  p (s.size/2).times.reduce(0){|move, i|
    move + (s[i].ord - s[s.size-1-i].ord).abs
  }
}
