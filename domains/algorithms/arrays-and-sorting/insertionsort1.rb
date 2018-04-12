#!/bin/ruby

# :reek:DuplicateMethodCall {max_calls: 3}
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements {max_statements: 11}
def insertion_sort(arr)
  idx = arr.length - 1
  val = arr[idx]
  (idx - 1).downto(0) do |num|
    if arr[num] > val
      arr[idx] = arr[num]
      idx = num
      puts arr.join(' ')
      if idx == 0
        arr[idx] = val
        puts arr.join(' ')
      end
    else
      arr[idx] = val
      puts arr.join(' ')
      break
    end
  end
end

_ = gets
insertion_sort(gets.strip.split.map(&:to_i))
