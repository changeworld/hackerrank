#!/bin/ruby

def median(n)
  return nil if n.empty?
  if n.size % 2 == 0
    (n[n.size/2-1]+n[n.size/2])/2.0
  else
    n[n.size/2]
  end
end

n = gets.to_i
a = gets.split.map(&:to_i).sort
l = a.shift(n/2)
r = a.pop(n/2)
p median(l).to_i
p median(l+a+r).to_i
p median(r).to_i