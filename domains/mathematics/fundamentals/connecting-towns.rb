#!/bin/ruby

gets.strip.to_i.times {
  _ = gets.strip.to_i
  p gets.strip.split.map(&:to_i).reduce(:*)%1234567
}
