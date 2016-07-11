#!/bin/ruby

r = cnt = 0
gets.to_i.to_s(2).chars{|c|
  if c == '1'
    cnt +=1
  else
    cnt = 0
  end
  r=[r,cnt].max
}
p r
