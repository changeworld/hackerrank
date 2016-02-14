#!/bin/ruby

gets.strip.to_i.times{
  n, c, m = gets.strip.split.map(&:to_i)
  tmp_c = n / c
  get_c = 0
  get_w = 0
  while tmp_c > 0
    get_c += tmp_c
    get_w += tmp_c
    tmp_c = get_w / m
    get_w %= m
  end
  p get_c
}
