#!/bin/ruby

gets.to_i.times{
  a1,b1,a2,b2 = gets.strip.split.map(&:to_i)
  puts "YES" if a1.gcd(b1) == a2.gcd(b2)
  puts "NO" if a1.gcd(b1) != a2.gcd(b2)
}
