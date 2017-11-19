#!/bin/ruby

s = gets.strip
s.gsub!($~.to_s, '') while s.match(%r{(\w)(\1)})
puts s.empty? ? 'Empty String' : s
