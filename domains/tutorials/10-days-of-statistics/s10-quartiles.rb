#!/bin/ruby

# :reek:DuplicateMethodCall { max_calls: 4 }
# :reek:UtilityFunction:public_methods_only: true
def median(num)
  return nil if num.empty?
  if num.size % 2 == 0
    (num[num.size/2-1]+num[num.size/2])/2.0
  else
    num[num.size/2]
  end
end

n = gets.to_i
a = gets.split.map(&:to_i).sort
l = a.shift(n/2)
r = a.pop(n/2)
p median(l).to_i
p median(l+a+r).to_i
p median(r).to_i
