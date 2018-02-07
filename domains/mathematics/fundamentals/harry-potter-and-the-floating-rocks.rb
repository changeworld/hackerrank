#!/bin/ruby

def gcd(x, y)
  return x if y == 0
  return gcd(y, x%y)
end

gets.to_i.times{
  x1, y1, x2, y2 = gets.split.map(&:to_i)
  a = gcd(y2-y1, x2-x1)
  p a-1 if a > 0
  p -a-1 if a <= 0
}
