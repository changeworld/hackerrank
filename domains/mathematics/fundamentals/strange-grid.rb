#!/bin/ruby

r,c = gets.strip.split.map &:to_i
p (r-1)/2*10+2*(c-1)+(r-1)%2
