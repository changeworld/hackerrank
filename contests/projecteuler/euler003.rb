#!/bin/ruby
require 'prime'

gets.strip.to_i.times{
  p gets.to_i.prime_division.max[0]
}
