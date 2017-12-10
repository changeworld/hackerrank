#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def func_p(num)
  Sequence_p[num - 1]
end

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)

Sequence_p = []
a.each_with_index{|x, i| Sequence_p[x-1] = i+1}

(1..n).each{|i| p func_p(func_p(i))}
