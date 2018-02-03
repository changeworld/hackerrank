#!/bin/ruby

s = 0
n,m = gets.split.map(&:to_i)
m.times{
  a,b,c = gets.split.map(&:to_i)
  s += c*(b-a+1)
}
p s/n
