#!/bin/ruby

# The Integer class extended for Day 4: Binomial Distribution II
class Integer
  # :reek:FeatureEnvy:exclude
  # :reek:TooManyStatements {max_statements: 7}
  def comb(inp)
    if inp == 0
      return 1
    end
    num = self
    ret = 1
    if inp > num/2
      inp = num-inp
    end
    inp.times{|idx|
      ret = ret*(num-idx)/(idx+1)
    }
    return ret
  end
end

r = 0.12
puts '%.3f'%[(0..2).reduce(0){|ret, i| ret+10.comb(i)*r**i*(1-r)**(10-i)}]
puts '%.3f'%[(2..10).reduce(0){|ret, i| ret+10.comb(i)*r**i*(1-r)**(10-i)}]
