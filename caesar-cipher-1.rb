#!/bin/ruby

_ = gets
s = gets.strip
k = gets.strip.to_i
uppercase = [*?A..?Z]
lowercase = [*?a..?z]
puts s.tr(uppercase * '' + lowercase * '', uppercase.rotate(k) * '' + lowercase.rotate(k) * '')
