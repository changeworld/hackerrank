#!/bin/ruby

a = []
0.step(999, 8){|i|
  n = '%03d'%i
  h = Hash.new(0)
  n.chars{|c| h[c] += 1}
  a << h
}

gets.to_i.times{
  n = gets.chomp
  if n.size < 4
    puts n.split('').permutation.any?{|b| b.join.to_i%8 == 0} ? 'YES' : 'NO'
  else
    h = Hash.new(0)
    n.chars{|c| h[c] += 1}
    puts a.any?{|e|
      e.all?{|k,v| h[k] >= v}
    } ? 'YES' : 'NO'
  end
}
