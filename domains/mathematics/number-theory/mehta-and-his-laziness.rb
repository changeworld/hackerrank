#!/bin/ruby

require 'prime'

gets.to_i.times{
  n = gets.to_i
  x = n.prime_division
  a = x.all?{|n, p| p%2 == 0} ? 1 : 0
  b = x.reduce(1){|s, (n,p)| s*(p+1)}
  y = [[],[]]
  x.each{|n, p|
    y[n%2] << p / 2 if p > 1
  }
  x = (y[0]+y[1]).reduce(1){|s, p| s*(p+1)} - y[1].reduce(1){|s, p| s*(p+1)} - a
  x = 0 if x < 0
  y = b - 1
  if x == 0
    p 0
  else
    g = x.gcd(y)
    x /= g
    y /= g
    puts '%d/%d'%[x, y]
  end
}
