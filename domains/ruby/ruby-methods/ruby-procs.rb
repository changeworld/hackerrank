#!/bin/ruby

proc_square_number = proc {|n| n * n}
proc_sum_array = proc {|arr| arr.inject {|sum, n| sum + n}}
my_array = gets.split.map(&:to_i)
sum = proc_sum_array.call(my_array)
puts proc_square_number.call(sum)
