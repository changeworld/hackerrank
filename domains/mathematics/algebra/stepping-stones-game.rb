#!/bin/ruby

gets.to_i.times{
  n = gets.to_i
  x = (-1+Math.sqrt(1+8*n))/2
  puts 'Go On Bob '+x.round.to_s if (x.round-x).abs < 1e-7
  puts 'Better Luck Next Time' if (x.round-x).abs >= 1e-7
}
