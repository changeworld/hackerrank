#!/bin/ruby

s = Array.new(3)
for s_i in (0..3-1)
  s[s_i] = gets.strip.split.map(&:to_i)
end
m_s_3 = [
    [[8, 1, 6], [3, 5, 7], [4, 9, 2]],
    [[6, 1, 8], [7, 5, 3], [2, 9, 4]],
    [[4, 9, 2], [3, 5, 7], [8, 1, 6]],
    [[2, 9, 4], [7, 5, 3], [6, 1, 8]],
    [[8, 3, 4], [1, 5, 9], [6, 7, 2]],
    [[4, 3, 8], [9, 5, 1], [2, 7, 6]],
    [[6, 7, 2], [1, 5, 9], [8, 3, 4]],
    [[2, 7, 6], [9, 5, 1], [4, 3, 8]],
]
cost = []
total = 0
for i in 0..m_s_3.length-1
  total = s[0].zip(m_s_3[i][0]).map{|x, y| (x - y).abs}.inject(0){|sum, i| sum + i}
  total += s[1].zip(m_s_3[i][1]).map{|x, y| (x - y).abs}.inject(0){|sum, i| sum + i}
  total += s[2].zip(m_s_3[i][2]).map{|x, y| (x - y).abs}.inject(0){|sum, i| sum + i}
  cost << total
end
p cost.min
