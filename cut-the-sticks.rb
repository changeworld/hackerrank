#!/bin/ruby

_ = gets.strip.to_i
arr = gets.strip.split.map(&:to_i)
while !arr.empty?
  p arr.size
  min = arr.min
  arr.map!{|stick| stick - min}.select!{|stick| stick > 0}
end
