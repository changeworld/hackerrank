#!/bin/ruby

require 'prime'

class Integer
  def power_mod(y, m)
    x = self
    z = 1
    while y != 0
      z = z*x%m if y&1 != 0
      x = x*x%m
      y >>= 1
    end
    z
  end

  def totient()
    self.prime_division.reduce(1){|s,e| s*(e[0]-1)*e[0]**(e[1]-1)}
  end
end

gets.to_i.times{
  x,y,z = gets.split.map(&:to_i)
  if y < 0
    x = x.power_mod(z.totient - 1, z)
    y = -y
  end
  p x.power_mod(y, z)
}
