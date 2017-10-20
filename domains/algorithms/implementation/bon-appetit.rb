#!/bin/ruby

def bonAppetit(n, k, b, ar)
  total = ar.inject{|sum, n| sum + n}
  actual = (total - ar[k])/2.to_i
  return 'Bon Appetit' if b == actual
  b - actual
end

n, k = gets.strip.split.map(&:to_i)
ar = gets.strip.split.map(&:to_i)
b = gets.strip.to_i
result = bonAppetit(n, k, b, ar)
puts result;
