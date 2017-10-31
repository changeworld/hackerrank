#!/bin/ruby

i,j,k = gets.strip.split.map(&:to_i)
cnt = 0
(i..j).each{|x|
  cnt += 1 if (x - x.to_s.reverse.to_i).abs % k == 0
}
p cnt
