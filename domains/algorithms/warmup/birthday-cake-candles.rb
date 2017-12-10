#!/bin/ruby

_ = gets.strip.to_i
ar = gets.strip.split.map(&:to_i)
puts ar.count(ar.max)
