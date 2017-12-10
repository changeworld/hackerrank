#!/bin/ruby

n = gets.strip.to_i
ar = gets.strip.split.map(&:to_i)
put ar.count(ar.max)
