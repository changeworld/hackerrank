#!/bin/ruby
arr = gets.to_i.times.map{gets.chomp}
p [*'a'..'z'].count{|alp|
  arr.all?{|word|
    word.include?(alp)
  }
}
