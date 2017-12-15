#!/bin/ruby

_, k = gets.strip.split.map(&:to_i)
arr = gets.strip.split.map(&:to_i)
p arr.inject{|sum, i| sum + i} if k == 1
page, p_cnt, s_cnt = [], 0, 0
arr.each{|ar|
  1.upto(ar){|i|
    page[p_cnt] = [] if i%k == 1
    page[p_cnt].push(i)
    p_cnt += 1 if i%k == 0
  }
  p_cnt += 1 unless ar%k == 0
}
page.length.times{|i|
  s_cnt+=1 if page[i].include?(i+1)
}
p s_cnt
