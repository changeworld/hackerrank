#!/bin/ruby
def count_special(k)
  arr = gets.strip.split.map(&:to_i)
  return arr.inject{|sum, n| sum + n} if k == 1
  page = []
  p_cnt = 0
  s_cnt = 0
  arr.each{|t|
    1.upto(t){|i|
      page[p_cnt] = [] if i%k == 1
      page[p_cnt].push(i)
      p_cnt+=1 if i%k == 0
    }
    p_cnt+=1 unless t%k == 0
  }
  page.length.times{|i|
    s_cnt+=1 if page[i].include?(i+1)
  }
  return s_cnt
end

_, k = gets.strip.split.map(&:to_i)
p count_special(k)
