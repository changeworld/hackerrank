#!/bin/ruby
require 'prime'

arr = Prime.each(10**6).to_a
gets.strip.to_i.times{
  n = gets.to_i
  p arr.take_while{|prime| prime <= n}.reduce(:+)
}
