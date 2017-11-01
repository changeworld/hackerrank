#!/bin/ruby

m = 2
t = 2
n = gets.to_i
for i in 1..(n-1)
  t = (3*t/2).to_i
  m += t
end
p m
