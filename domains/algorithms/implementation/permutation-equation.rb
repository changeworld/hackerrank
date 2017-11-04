#!/bin/ruby

def func_p(n)
  Sequence_p[n - 1]
end

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

Sequence_p = []
a.each_with_index{|x, i| Sequence_p[x-1] = i+1}

(1..n).each{|i| p func_p(func_p(i)) }
