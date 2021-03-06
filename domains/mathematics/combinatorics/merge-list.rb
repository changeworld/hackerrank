#!/bin/ruby

# Add function to existing Integer class
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements {max_statements: 6}
# :reek:UncommunicativeParameterName
# :reek:UncommunicativeVariableName
class Integer
  def comb(x)
    return 1 if x == 0
    n = self, ret = 1
    x = n-x if x > n/2
    x.times{|i| ret = ret*(n-i)/(i+1)}
    ret
  end
end

gets.to_i.times{
  x, y = gets.split.map(&:to_i)
  p (x+y).comb(x)%(10**9+7)
}
