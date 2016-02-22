#!/bin/ruby
w = DATA.map(&:chomp)
h = gets.strip.to_i
m = gets.strip.to_i

if m == 0
  puts w[h].split[0] + " o' clock"
elsif m <= 30
  puts w[m] + ' past ' + w[h].split[0]
else
  puts w[60-m] + ' to ' + w[h%12+1].split[0]
end
__END__

one minute
two minutes
three minutes
four minutes
five minutes
six minutes
seven minutes
eight minutes
nine minutes
ten minutes
eleven minutes
twelve minutes
thirteen minutes
fourteen minutes
quarter
sixteen minutes
seventeen minutes
eighteen minutes
nineteen minutes
twenty minutes
twenty one minutes
twenty two minutes
twenty three minutes
twenty four minutes
twenty five minutes
twenty six minutes
twenty seven minutes
twenty eight minutes
twenty nine minutes
half
