#!/bin/ruby

s,q = gets.strip.scan(/((\w)\2*)/).map(&:first),{}
s.each{|a| a.scan(/\w/).each_with_index{|b, i| q[(('a'..'z').to_a.index(b)+1)*(i+1)] = 0}}
gets.strip.to_i.times{puts q[gets.strip.to_i] != nil ? "Yes" : "No"}
