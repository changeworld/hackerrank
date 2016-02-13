#!/bin/ruby

gets.strip.to_i.times {
  x, y = gets.strip.split.map(&:to_i)
  x = x**(1/2.0)
  y = y**(1/2.0)
  p (x == x.to_i)? y.to_i - x.to_i + 1 : y.to_i - x.to_i
}
