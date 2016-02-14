#!/bin/ruby

n, t = gets.strip.split.map(&:to_i)
width = gets.strip.split.map(&:to_i)
p width
t.times{
  i, j = gets.strip.split.map(&:to_i)
  p width[i..j].min
}
