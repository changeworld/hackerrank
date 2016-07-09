#!/bin/ruby

hash = {}
gets.to_i.times{
  hash.store(*gets.split)
}
$<.each{|key|
  key.chomp!
  puts hash.has_key?(key) ? "#{key}=#{hash[key]}" : "Not found"
}
