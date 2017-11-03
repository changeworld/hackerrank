#!/bin/ruby

n,k,q = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
for a0 in (0..q-1)
  m = gets.strip.to_i
  puts a[(n-(k%n)+m)%n]
end
