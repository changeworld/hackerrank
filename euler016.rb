#!/bin/ruby
gets.strip.to_i.times{
  p (2**gets.to_i).to_s.chars.map(&:to_i).reduce(:+)
}
