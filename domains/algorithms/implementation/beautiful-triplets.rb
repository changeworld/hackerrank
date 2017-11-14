#!/bin/ruby

n,d = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
cnt = 0
for i in 0..(n-1)
  cnt +=1 if a.include?(a[i].to_i+d) and a.include?(a[i].to_i+2*d)
end
p cnt
