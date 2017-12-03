#!/bin/ruby
require 'date'

# :reek:UtilityFunction:public_methods_only: true
def solve(year)
  dd = 13
  dd = 12 if ((year <= 1917) && (year % 4 == 0)) || Date.new(year).leap?
  dd = 26 if (year == 1918)
  dd.to_s + ".09." + year.to_s
end

year = gets.strip.to_i
result = solve(year)
puts result;
