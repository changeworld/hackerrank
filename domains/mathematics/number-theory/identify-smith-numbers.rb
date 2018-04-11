#!/bin/ruby
require 'prime'

# :reek:UtilityFunction:public_methods_only: true
def calc(num)
  num.to_s.chars.map(&:to_i).reduce(:+)
end

n = gets.to_i
p calc(n) == n.prime_division.map{|n, p| calc(n) * p}.reduce(:+) ? 1 : 0
