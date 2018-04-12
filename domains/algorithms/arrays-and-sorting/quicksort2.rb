#!/bin/ruby

# :reek:DuplicateMethodCall {max_calls: 2}
# :reek:UtilityFunction:public_methods_only: true
def partition(arr)
  fst = arr.first
  ar = arr[1..-1].partition{|num| num < fst}
  [ar[0].size, ar[0]+[fst]+ar[1]]
end

def quicksort(arr)
  return arr if arr.size < 2
  num, ar = partition(arr)
  ret = quicksort(ar[0...num])+[ar[num]]+quicksort(ar[(num+1)..-1])
  puts ret*' '
  ret
end

gets
arr = gets.strip.split.map(&:to_i)
quicksort(arr)
