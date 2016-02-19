#!/bin/ruby

d1, m1, y1 = gets.strip.split.map(&:to_i)
d2, m2, y2 = gets.strip.split.map(&:to_i)

if y1 > y2
  p 10000
elsif y1 == y2 && m1 > m2
  p 500 * (m1 - m2)
elsif y1 == y2 && m1 == m2 && d1 > d2
  p 15 * (d1 - d2)
else
  p 0
end
