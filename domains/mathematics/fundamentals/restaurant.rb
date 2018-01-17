#!/bin/ruby

gets.strip.to_i.times {
  l,b = gets.strip.split.map(&:to_i)
  p l*b/(l.gcd(b))**2
}
