#!/bin/ruby

s = gets.strip
n = gets.strip.to_i
p (s.count('a') * (n / s.size) + s[0, n % s.size].count('a'))
