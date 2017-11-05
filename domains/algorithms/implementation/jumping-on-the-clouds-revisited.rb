#!/bin/ruby

_,k = gets.strip.split.map(&:to_i)
c = gets.strip.split.map(&:to_i).map!{|i| i == 1 ? 3 : 1}
puts 100 - c.each_slice(k).map(&:first).inject(0, :+)
