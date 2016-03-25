#!/bin/ruby
def partition(arr)
  p = arr.first
  f = arr[1..-1].partition{|n| n < p}
  [f[0].size, f[0]+[p]+f[1]]
end

def quicksort(arr)
  return arr if arr.size < 2
  n, a = partition(arr)
  r = quicksort(a[0...n])+[a[n]]+quicksort(a[(n+1)..-1])
  puts r*' '
  r
end

gets
arr = gets.strip.split.map(&:to_i)
quicksort(arr)
