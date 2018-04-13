#!/bin/ruby

MOD=1000000007
# :reek:UncommunicativeParameterName
# :reek:UncommunicativeVariableName
def base_exponent_mod(x, y)
  z = 1
  while y != 0
    z = z*x%MOD if y&1 != 0
    x = x*x%MOD
    y >>= 1
  end
  z
end

gets.to_i.times{
    x,y = gets.split.map(&:to_i)
    p base_exponent_mod(x%MOD, y%~-MOD)
}
