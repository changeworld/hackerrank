#!/bin/ruby

arr = gets.strip.split.map(&:to_i)
sum = arr.reduce(:+)
puts '%d %d' %[sum - arr.max, sum-arr.min]
