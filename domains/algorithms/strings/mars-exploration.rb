#!/bin/ruby

s = gets.strip
l = s.length
t = 'SOS'*(l/3)
p l.times.count{|i| s[i] != t[i]}
