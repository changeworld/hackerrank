#!/bin/ruby

def median(n)
  return nil if n.empty?
  if n.size % 2 == 0
    (n[n.size/2-1]+n[n.size/2])/2.0
  else
    n[n.size/2]
  end
end

gets
e = gets.split.map(&:to_i)
f = gets.split.map(&:to_i)
e = e.zip(f).flat_map{|e, f|[e]*f}.sort
n = e.size

l = e.shift(n/2)
r = e.pop(n/2)
q1 = median(l)
q3 = median(r)
puts '%.1f'%[q3-q1]
