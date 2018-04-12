#!/bin/ruby

_ = gets
miles = 0
calories = gets.strip.split.map(&:to_i).sort{|a, b| b <=> a}.each_with_index{|c, i| miles += c * 2 ** i}
p miles
