#!/bin/ruby
require 'matrix'

def fibonacci i
  (Matrix[[1,1], [1,0]]**i)[0,1]
end

arr = [0, 1, 1, 2]
(4..83).each{|i|
  fib = fibonacci i
  arr << fib
}
gets.to_i.times{
  n = gets.strip.to_i
  puts (arr[(arr.take_while{|i| i <= n}.length-1)/3*3+2]-1)/2
}
