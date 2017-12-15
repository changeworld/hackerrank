#!/bin/ruby
=begin
b b b b b b ->  1
b b b b b g ->  6
b b b b g g -> 15
b b b g g g -> 20
b b g g g g -> 15
b g g g g g ->  6
g g g g g g ->  1
=end

class Integer
  # :reek:FeatureEnvy:exclude
  # :reek:TooManyStatements { max_statements: 7 }
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

b = 1.09/2.09
puts '%.3f'%[(3..6).reduce(0){|ret, i| ret+6.comb(i)*b**i*(1-b)**(6-i)}]
