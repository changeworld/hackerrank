#!/bin/ruby

n = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
t = []
min_a = [1000]
for i in 0..(a.sort.uniq.size-1)
  if a.count(a[i]) > 1
    a.each_with_index{|item, idx| t << idx if item == a[i]}
    for j in 1..(t.size-1)
      min_a << t[j] - t[j-1]
    end
    t = []
  end
end
p min_a.min == 1000 ? -1 : min_a.min
