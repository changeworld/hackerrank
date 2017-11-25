#!/bin/ruby

def beautiful_string(s)
  flag = false
  for i in 1..(s.size/2)+1
    t = s[0, i].to_i
    if s == generate_beautiful_string(t, s.size)
    puts "YES #{t}"
    flag = true
    return
    end
  end
  puts 'NO' if flag == false
end

def generate_beautiful_string(s, length)
  rtn = ''
  idx = 0
  while rtn.size < length
    rtn += s.to_s
    s += 1
    idx += 1
  end
  return idx == 1 ? '' : rtn
end

q = gets.strip.to_i
for a0 in (0..q-1)
  s = gets.strip
  beautiful_string(s)
end
