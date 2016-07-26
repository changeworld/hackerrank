#!/bin/ruby
# https://ja.wikipedia.org/wiki/%E5%8F%8B%E6%84%9B%E6%95%B0
amicable_numbers = [220, 284, 1184, 1210, 2620, 2924, 5020, 5564, 6232, 6368, 10744, 10856, 12285, 14595, 17296, 18416, 63020, 66928, 66992, 67095, 69615, 71145, 76084, 79750, 87633, 88730]

gets.strip.to_i.times{
  n = gets.to_i
  p amicable_numbers.select{|i| i <= n}.reduce(0, :+)
}
