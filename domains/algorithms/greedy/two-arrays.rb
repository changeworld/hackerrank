#!/bin/ruby

gets.to_i.times{
  n, k = gets.split.map(&:to_i)
  a, b = gets.split.map(&:to_i), gets.split.map(&:to_i)
  puts a.sort.zip(b.sort.reverse).map{|x| x.reduce(&:+)}.select{|x| x < k}.any? ? 'NO' : 'YES'
}
