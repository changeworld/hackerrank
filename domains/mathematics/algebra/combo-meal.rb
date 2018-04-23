#!/bin/ruby

# :reek:UncommunicativeParameterName
# :reek:UtilityFunction:public_methods_only: true
def profit(b, s, c)
  s-c+b
end

gets.to_i.times{
  b, s, c = gets.strip.split.map(&:to_i)
  puts profit(b, s, c)
}
