#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def prime?(num)
  num > 1 && (2..num-1).all? {|idx| num % idx != 0}
end
