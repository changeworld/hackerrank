#!/bin/ruby

n, m = gets.strip.split.map(&:to_i)
arr_knowledge = Array.new(n).map{Array.new(m)}
for i in (0..n-1)
  flags = gets.strip.chomp
  for j in (0..m-1)
    arr_knowledge[i][j] = flags[j]
  end
end

max_teams, max_topics = 0, 0

for i in (0..n-1)
  for j in (i+1..n-1)
    num_topics = 0
    for k in (0..m-1)
      num_topics += (arr_knowledge[i][k].to_i | arr_knowledge[j][k].to_i)
    end
    if max_topics < num_topics
      max_teams = 1
      max_topics = num_topics
    elsif max_topics == num_topics
      max_teams += 1
    end
  end
end
p max_topics
p max_teams
