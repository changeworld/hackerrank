#!/bin/ruby

# :reek:FeatureEnvy:exclude
def factorial(num)
  num < 2 ? 1 : num * factorial(num-1)
end
p factorial(gets.to_i)
