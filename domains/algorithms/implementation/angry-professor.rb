#!/bin/ruby

gets.strip.to_i.times {
  _,k = gets.strip.split.map(&:to_i)
  puts k > gets.strip.split.map(&:to_i).count{|t|t.to_i <= 0} ? :YES : :NO
}
