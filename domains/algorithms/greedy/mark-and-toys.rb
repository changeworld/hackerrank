#!/bin/ruby

n,k = gets.strip.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

i,j = 0,0
while i < k
  i += a[j]
  j += 1
end
p j-1
