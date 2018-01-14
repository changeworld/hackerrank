#!/bin/ruby
# Sn = 1 + 3 + 5 + ... + 2n-1 = n * n
gets.strip.to_i.times {
  n = gets.strip.to_i
  p n**2%1000000007
}
