#!/bin/ruby
arr = Array.new(26).map{Array.new(23, 0)}
3.step(22){|i|
  arr[i] = gets.split.map(&:to_i).to_a
  3.times{
    arr[i].push(0)
  }
}
p 3.step(22).map{|i|
  20.times.map{|j| [
    arr[i][j]*arr[i-1][j]*arr[i-2][j]*arr[i-3][j],
    arr[i][j]*arr[i-1][j+1]*arr[i-2][j+2]*arr[i-3][j+3],
    arr[i][j]*arr[i][j+1]*arr[i][j+2]*arr[i][j+3],
    arr[i][j]*arr[i+1][j+1]*arr[i+2][j+2]*arr[i+3][j+3]
  ].max}.max
}.max
