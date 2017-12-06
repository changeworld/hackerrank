#!/bin/ruby

MAX = 5*10**6
$tmp = {}
# :reek:FeatureEnvy:exclude
def collatz(num)
  return 0 if num < 2
  num = num%2 == 0 ? num/2 : 3*num+1
  $tmp[num] ||= collatz(num)+1
end

# :reek:DuplicateMethodCall { max_calls: 2 }
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements { max_statements: 11 }
def longest_collatz_sequence(max)
  se = 0.step(max).map{|idx| [collatz(idx), idx]}
  box = []
  1.step(max){|idx|
    (se[idx-1] <=> se[idx]) == -1 ? box.push(se[idx].last) : se[idx] = se[idx-1]
  }
  box
end

# Resutl longest_collatz_sequence(MAX)
collatz_sequence = [1, 2, 3, 6, 7, 9, 18, 19, 25, 27, 54, 55, 73, 97, 129, 171, 231, 235, 313, 327, 649, 654, 655, 667, 703, 871, 1161, 2223, 2322, 2323, 2463, 2919, 3711, 6171, 10971, 13255, 17647, 17673, 23529, 26623, 34239, 35497, 35655, 52527, 77031, 106239, 142587, 156159, 216367, 230631, 410011, 511935, 626331, 837799, 1117065, 1126015, 1501353, 1564063, 1723519, 2298025, 3064033, 3542887, 3732423]

gets.strip.to_i.times{
  n = gets.to_i
  p collatz_sequence.select{|i| i <= n}.last
}
