def palindrome?(s)
  s.reverse == s
end

def palindrome_index(s)
  return -1 if palindrome?(s)
  (s.length/2).times{|i|
    if s[i] != s[-(i+1)]
      b = s[0...i]
      a = s[i+1...s.length]
      return i if palindrome?(b + a)
      b = s[0...-(i+1)]
      a = s[(s.length-i)...s.length]
      return s.length-i-1 if palindrome?(b + a)
    end
  }
end

gets.strip.to_i.times{
  s = gets.strip
  puts palindrome_index(s)
}
