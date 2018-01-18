#!/bin/ruby

n = gets.strip.to_i
d = [1]
for i in 2..(n/2)
  d.push(i) if n%i == 0
end
d.push(n)
s = d.map{|x| x.to_s.split.map(&:to_i).reduce(:+)}
p d[s.index(s.max)]
