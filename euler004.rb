#!/bin/ruby
arr = []
999.step(0, -1){|i|
  999.step(i, -1){|j|
    s = i*j
    arr<<s if s.to_s == s.to_s.reverse
  }
}
arr.sort!
gets.strip.to_i.times{
  n = gets.to_i
  p arr.take_while{|i| i < n}.last
}
