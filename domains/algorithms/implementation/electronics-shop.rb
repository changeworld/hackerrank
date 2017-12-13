#!/bin/ruby

s,n,m = gets.strip.split.map(&:to_i)
keyboards = gets.strip.split.map(&:to_i)
drives = gets.strip.split.map(&:to_i)
rtn = keyboards.product(drives).collect{|item| item.inject(:+)}.select{|item| item <= s}.max
puts rtn.nil? ? -1 : rtn
