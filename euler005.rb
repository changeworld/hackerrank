#!/bin/ruby
gets.strip.to_i.times{
  p 1.step(gets.to_i).reduce(&:lcm)
}
