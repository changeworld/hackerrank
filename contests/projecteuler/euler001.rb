#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def calc(num)
  num*(num+1)/2
end

gets.strip.to_i.times{
  n = gets.strip.to_i - 1
  p calc(n/3)*3 + calc(n/5)*5 - calc(n/15)*15
}
