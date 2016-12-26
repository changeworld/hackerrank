#!/bin/ruby
arr = [
  nil,
  nil,
  nil,
  [0, 1],
  nil,
  [1, 0],
  [0, 2],
  nil,
  [1, 1],
  [0, 3],
  [2, 0],
  [1, 2],
  [0, 4],
  [2, 1],
  [1, 3],
  [0, 5]
]
16.step(100000){|i|
  arr[i] = arr[i-5].clone
  arr[i][0] += 1
  if arr[i][0] == 3
    arr[i][1] += 5
    arr[i][0] = 0
  end
}

gets.strip.to_i.times {
  n = gets.strip.to_i
  puts arr[n] ? '5' * 3 * arr[n][1] + '3' * 5 * arr[n][0] : -1
}
