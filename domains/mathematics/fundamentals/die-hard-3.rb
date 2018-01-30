#!/bin/ruby

gets.to_i.times{
  a,b,m = gets.split.map(&:to_i)
  if m <= [a,b].max && m%a.gcd(b) == 0
    puts 'YES'
  else
    puts 'NO'
  end
}
