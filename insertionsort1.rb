#!/bin/ruby

def insertion_sort(arr)
  i = arr.length - 1
  v = arr[i]
  (i - 1).downto(0) do |j|
    if arr[j] > v
      arr[i] = arr[j]
      i = j
      puts arr.join(' ')
      if i == 0
        arr[i] = v
        puts arr.join(' ')
      end
    else
      arr[i] = v
      puts arr.join(' ')
      break
    end
  end
end

_ = gets
arr = gets.strip.split.map(&:to_i)
insertion_sort(arr)
