#!/bin/ruby

gets.strip.to_i.times {
  n = gets.chomp
  p n.chars.count {|c|
    c.to_i > 0 && n.to_i % c.to_i == 0
  }
}
