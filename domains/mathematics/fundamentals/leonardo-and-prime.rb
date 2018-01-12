#!/bin/ruby
# Because after 47 the number goes beyond the given constraints. 2*3*5*7*11*13*17*19*23*29*31*37*41*43*47*53 = 32589158477190044730
prime = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]

gets.strip.to_i.times {
  n = gets.strip.to_i
  cnt = 0
  product = 1
  for i in 0..(prime.size-1)
    product = product * prime[i]
    cnt += 1 if product <= n
  end
  p cnt
}
