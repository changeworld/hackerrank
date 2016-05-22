#!/bin/ruby

time = gets.strip
if time[0, 2] == '12' then
  puts '00' + time[2, 6] if time[-2..-1] == 'AM'
  puts '12' + time[2, 6] unless time[-2..-1] == 'AM'
else
  puts time[0, 8] if time[-2..-1] == 'AM'
  puts (time[0, 2].to_i+12).to_s + time[2, 6] unless time[-2..-1] == 'AM'
end