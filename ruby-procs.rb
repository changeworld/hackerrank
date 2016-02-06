def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = proc {|n| n * n}
proc_sum_array     = proc {|arr| arr.inject {|sum, n| sum + n }}
my_array = gets.split.map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
