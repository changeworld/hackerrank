#!/bin/ruby

# :reek:DuplicateMethodCall {max_calls: 2}
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements {max_statements: 8}
def sorting(arr)
  cnt = 0
  (arr.size-1).times{
    (arr.size-1).times{|idx|
      if arr[idx] > arr[idx+1]
        arr[idx + 1], arr[idx] = arr[idx], arr[idx + 1]
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
