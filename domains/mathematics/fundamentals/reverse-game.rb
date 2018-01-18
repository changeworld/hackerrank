#!/bin/ruby

gets.strip.to_i.times {
  n,k = gets.strip.split.map(&:to_i)
  p (k>=n/2) ? (n-k-1)*2 : 2*k+1
}
