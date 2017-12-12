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

gets
e = gets.split.map(&:to_i)
f = gets.split.map(&:to_i)
e = e.zip(f).flat_map{|e, f|[e]*f}.sort
n = e.size

l = e.shift(n/2)
r = e.pop(n/2)
q1 = median(l)
q3 = median(r)
puts '%.1f'%[q3-q1]
