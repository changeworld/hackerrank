#!/bin/ruby

def getMoneySpent(keyboards, drives, s)
  rtn = keyboards.product(drives).collect{|item| item.inject(:+)}.select{|item| item <= s}.max
  rtn.nil? ? -1 : rtn
end

s,n,m = gets.strip.split.map(&:to_i)
keyboards = gets.strip.split.map(&:to_i)
drives = gets.strip.split.map(&:to_i)
moneySpent = getMoneySpent(keyboards, drives, s)
puts moneySpent;
