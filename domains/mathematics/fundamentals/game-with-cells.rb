#!/bin/ruby

n,m = gets.strip.split.map(&:to_f)
p (n/2).ceil * (m/2).ceil
