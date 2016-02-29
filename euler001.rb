#!/bin/ruby
def calc(n)
  n*(n+1)/2
end

gets.strip.to_i.times{
  n = gets.strip.to_i - 1
  p calc(n/3)*3 + calc(n/5)*5 - calc(n/15)*15
}
