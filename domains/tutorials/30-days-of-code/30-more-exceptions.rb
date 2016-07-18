#!/bin/ruby

class RangeError < StandardError
end

# Write your code here
class Calculator
  def power(n, p)
    if n<0 || p<0
      raise RangeError.new('n and p should be non-negative')
    end
    n**p
  end
end
# Writed your code here

myCalculator = Calculator.new()

t = gets.to_i

for i in 1..t
  n, p = gets.split.map(&:to_i)
  begin
    ans = myCalculator.power(n, p)
    puts ans.to_i
  rescue RangeError => e
    puts e.message
  end
end
