#!/bin/ruby
arr = [1]
1.step(60) {|i|
  arr.push(i % 2 == 0 ? arr.last + 1 : arr.last * 2)
}

gets.strip.to_i.times {
  n = gets.strip.to_i
  puts arr[n]
}
