#!/bin/ruby
gets.strip.to_i.times{
  n, m = gets.split.map(&:to_i)
  p 1.step(n+m).reduce(:*) / 1.step(n).reduce(:*) / 1.step(m).reduce(:*)%1000000007
}
