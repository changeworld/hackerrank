#!/bin/ruby

# The Array class extended for Between Two Sets
class Array
  def lcm
    self.inject{|fst, snd| fst.lcm(snd)}
  end

  def gcd
    self.inject{|fst, snd| fst.gcd(snd)}
  end
end

# :reek:TooManyStatements {max_statements: 6}
# :reek:UtilityFunction:public_methods_only: true
def get_total_x(fst, snd)
  st = fst.lcm
  en = snd.gcd
  rtn = 0
  (en/st).to_i.times{|idx|
    rtn = rtn + 1 if en%(st * (idx+1)) == 0
  }
  rtn
end

n, m = gets.strip.split.map(&:to_i)
fst = gets.strip.split.map(&:to_i)
snd = gets.strip.split.map(&:to_i)
puts get_total_x(fst, snd)
