#!/bin/ruby

gets.to_i.times{
  n, k = gets.split.map(&:to_i)
  c = n*n-4*n*k
  if c < 0
    p n-1
  else
    x = (n-Math.sqrt(c))/2
    p x.to_i*2 - (c==0 ? 1 : 0)
  end
}
