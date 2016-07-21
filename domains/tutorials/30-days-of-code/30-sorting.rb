#!/bin/ruby

def sorting(arr)
  cnt = 0
  (arr.size-1).times{
    (arr.size-1).times{|i|
      if arr[i] > arr[i+1]
        arr[i + 1], arr[i] = arr[i], arr[i + 1]
        cnt += 1
      end
    }
  }
  puts "Array is sorted in #{cnt} swaps."
  puts "First Element: #{arr.first}"
  puts "Last Element: #{arr.last}"
end

gets
sorting(gets.split.map(&:to_i))
