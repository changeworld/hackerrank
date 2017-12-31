#!/bin/ruby

n,k = gets.split.map(&:to_i)
imp,unimp = [],[]
n.times{
  l,t = gets.split.map(&:to_i)
  imp.push l if t == 1
  unimp.push l unless t == 1
}
imp.sort!.reverse!
p unimp.reduce(0,:+)+imp.slice!(0,k).reduce(0,:+)-imp.reduce(0,:+)
