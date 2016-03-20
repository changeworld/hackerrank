#!/bin/ruby
ans = [1, 1]
a, b, n = 1, 1, 2
digits = 2
while digits <= 5000
  while b < 10**(digits-1)
    a, b, n = b, a+b, n+1
  end
  ans[digits] = n
  digits+=1
end
gets.strip.to_i.times{
  p ans[gets.to_i]
}
