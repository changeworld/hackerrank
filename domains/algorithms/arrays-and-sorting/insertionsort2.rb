#!/bin/ruby

def insertion_sort(arr)
  (1..(arr.length-1)).each do |i|
    (i-1).downto(0) do |j|
      if arr[j] > arr[i]
        arr[j], arr[i] = arr[i], arr[j]
        i = j
        puts arr.join(' ') if i == 0
      else
        puts arr.join(' ')
        break
      end
    end
  end
end

_ = gets.to_i
arr = gets.strip.split.map(&:to_i)
insertion_sort(arr)
