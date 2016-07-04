#!/bin/ruby

n = gets.strip.to_i
puts n.odd? || (n>=6 && n<=20) ? "Weird" : "Not Weird"
