#!/bin/ruby

# :reek:DuplicateMethodCall {max_calls: 2}
# :reek:FeatureEnvy:exclude
# :reek:NestedIterators {max_allowed_nesting: 2}
# :reek:TooManyStatements {max_statements: 7}
def insertion_sort(arr)
  (1..(arr.length-1)).each do |idx|
    (idx-1).downto(0) do |idex|
      if arr[idex] > arr[idx]
        arr[idex], arr[idx] = arr[idx], arr[idex]
        idx = idex
        puts arr.join(' ') if idx == 0
      else
        puts arr.join(' ')
        break
      end
    end
  end
end

_ = gets.to_i
insertion_sort(gets.strip.split.map(&:to_i))
