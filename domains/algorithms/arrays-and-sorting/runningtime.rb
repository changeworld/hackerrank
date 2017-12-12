#!/bin/ruby

_ = gets
arr = gets.chomp.split.map(&:to_i)
count = 0
(1..(arr.length-1)).each do |i|
  index = i
  (i-1).downto(0) do |j|
    if arr[j] > arr[index]
      arr[j], arr[index] = arr[index], arr[j]
      index = j
      count += 1
    else
      break
    end
  end
end
p count
