#!/bin/ruby

gets.to_i.times{
  n = gets.to_i
  p (5..10**18).bsearch{|i|
    x = 0
    d = 5
    while d <= i
      x += i/d
      d *= 5
    end
    x >= n
  }
}
