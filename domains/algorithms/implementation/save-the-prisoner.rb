#!/bin/ruby

gets.strip.to_i.times{
  n, m, s = gets.strip.split.map(&:to_i)
  puts ((m+s-2)%n)+1
}
