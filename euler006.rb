#!/bin/ruby
gets.strip.to_i.times{
  n = gets.to_i
  p (n*(n+1)/2)**2 - n*(n+1)*(2*n+1)/6
}
