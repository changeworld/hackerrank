#!/bin/ruby

gets
s = gets.strip
r = 0
[*'a'..'z'].combination(2){|x|
  t = s.tr('^'+x*'','')
  next if t =~/(.)\1/ || t.size == 1
  r = [r, t.size].max
}
p r
