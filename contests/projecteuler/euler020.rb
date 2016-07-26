#!/bin/ruby
gets.strip.to_i.times{
  n = gets.to_i
  p (1..n).reduce(1, :*).to_s.chars.map(&:to_i).reduce(:+)
}
