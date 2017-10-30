#!/bin/ruby

h = gets.strip.split.map(&:to_i)
word = gets.strip
p word.each_char.map{|c| h[('a'..'z').to_a.index(c)]}.max * word.size
