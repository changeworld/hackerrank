#!/bin/ruby

# :reek:DuplicateMethodCall { max_calls: 2 }
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements { max_statements: 13 }
# :reek:NestedIterators {max_allowed_nesting: 2 }
def count_special(cnt)
  arr = gets.strip.split.map(&:to_i)
  return arr.inject{|sum, num| sum + num} if cnt == 1
  page, p_cnt, s_cnt = [], 0, 0
  arr.each{|ar|
    1.upto(ar){|num|
      page[p_cnt] = [] if num%cnt == 1
      page[p_cnt].push(num)
      p_cnt += 1 if num%cnt == 0
    }
    p_cnt += 1 unless ar%cnt == 0
  }
  page.length.times{|idx|
    s_cnt+=1 if page[idx].include?(idx+1)
  }
  return s_cnt
end

_, k = gets.strip.split.map(&:to_i)
p count_special(k)
