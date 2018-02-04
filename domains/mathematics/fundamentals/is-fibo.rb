#!/bin/ruby

h = {}
a,b = 0,1
while b < 10**10
  h[b]=1
  a,b = b,a+b
end
gets.to_i.times{puts h[gets.to_i] ? 'IsFibo' : 'IsNotFibo'}
