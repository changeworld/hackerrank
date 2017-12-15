#!/bin/ruby

n, k = gets.strip.split.map(&:to_i)
ar = gets.strip.split.map(&:to_i)
cnt = 0
for i in 0..(n-2)
  for j in (i+1)..(n-1)
    cnt += 1 if ((ar[i] + ar[j])%k == 0)
  end
end
puts cnt
