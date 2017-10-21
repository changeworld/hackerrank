#!/bin/ruby

def sockMerchant(n, ar)
  num = 0
  ar.inject(Hash.new(0)){|k, i| k[i] += 1; k}.each_value{|f| num += f/2}
  num
end

n = gets.strip.to_i
ar = gets.strip.split.map(&:to_i)
result = sockMerchant(n, ar)
puts result;
