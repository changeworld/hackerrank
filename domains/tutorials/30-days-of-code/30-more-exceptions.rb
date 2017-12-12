#!/bin/ruby

calculator = Calculator.new()
t = gets.to_i
for i in 1..t
  n, p = gets.split.map(&:to_i)
  begin
    if n<0 || p<0
      raise StandardError.new('n and p should be non-negative')
    end
    puts n**p.to_i
  rescue RangeError => e
    puts e.message
  end
end
