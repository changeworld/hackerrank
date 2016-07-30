#!/bin/ruby

gets.to_i.times{
  n, k = gets.split.map(&:to_i)
  p (k-1).downto(0).find{|e|
    w = e.to_s(2).chars
    w.size.times.any?{|i| w[i] == '0' && (w[0,i]+['1']+w[i+1..-1]).join.to_i(2) <= n} || (['1']+w).join.to_i(2) <= n
  }
}
