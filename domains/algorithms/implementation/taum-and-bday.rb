#!/bin/ruby
gets.strip.to_i.times{
  b, w = gets.strip.split.map(&:to_i)
  x, y, z = gets.strip.split.map(&:to_i)
  p b * [x, y+z].min + w * [y, x+z].min
}
