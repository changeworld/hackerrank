#!/bin/ruby

n = gets.strip.to_i
c = gets.strip.split.map(&:to_i)
i = 0
step = 0
while i < n-1
  step+=1
  if c[i+2] == 1
    i+=1
  else
    i+=2
  end
end
p step
