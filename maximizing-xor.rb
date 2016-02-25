#!/bin/ruby
l = gets.to_i
r = gets.to_i
mx = 0
l.upto(r){|i|
  i.upto(r){|j|
    mx = [i^j, mx].max
  }
}
p mx
