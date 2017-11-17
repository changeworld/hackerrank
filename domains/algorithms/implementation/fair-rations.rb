#!/bin/ruby

n = gets.strip.to_i
b = gets.split.map(&:to_i)
sum = 0
flag = false
if b.inject(:+)%2 != 0
  puts 'NO'
  return 0
end
b.each{|x|
  if x.odd?
    sum += 2 if flag
    flag = !flag
  elsif x.even? && flag
    sum += 2
  end
}
puts flag ? 'NO' : sum
