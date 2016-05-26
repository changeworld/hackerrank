#!/bin/ruby
require 'prime'
prime = Prime.take(10001)

gets.strip.to_i.times{
  p prime[gets.to_i-1]
}
