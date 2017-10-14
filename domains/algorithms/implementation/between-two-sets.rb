#!/bin/ruby

class Array
  def lcm
    self.inject{|a, b| a.lcm(b)}
  end

  def gcd
    self.inject{|a, b| a.gcd(b)}
  end
end

def getTotalX(a, b)
  s = a.lcm
  e = b.gcd
  rtn = 0
  (e/s).to_i.times do |i|
    rtn = rtn + 1 if e%(s * (i+1)) == 0
  end
  rtn
end

n, m = gets.strip.split.map(&:to_i)
a = gets.strip.split.map(&:to_i)
b = gets.strip.split.map(&:to_i)
total = getTotalX(a, b)
puts total
