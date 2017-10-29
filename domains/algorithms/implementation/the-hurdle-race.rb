#!/bin/ruby

n,k = gets.strip.split.map(&:to_i)
height = gets.strip.split.map(&:to_i)
p height.max > k ? height.max - k : 0