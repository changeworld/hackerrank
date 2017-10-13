#!/bin/ruby

def kangaroo(x1, v1, x2, v2)
  if (x1 > x2 and v1 >= v2) or (x1 < x2 and v1 <= v2) or (x1-x2).abs % (v1-v2).abs != 0
    'NO'
  else
    'YES'
  end
end

x1, v1, x2, v2 = gets.strip.split.map(&:to_i)
result = kangaroo(x1, v1, x2, v2)
puts result
