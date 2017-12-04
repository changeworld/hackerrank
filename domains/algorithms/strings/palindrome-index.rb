#!/bin/ruby

# :reek:UtilityFunction:public_methods_only: true
def palindrome?(str)
  str.reverse == str
end

# :reek:DuplicateMethodCall { max_calls: 5 }
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements { max_statements: 8 }
def palindrome_index(str)
  return -1 if palindrome?(str)
  (str.length/2).times{|idx|
    if str[idx] != str[-(idx+1)]
      nb = str[0...idx]
      na = str[idx+1...str.length]
      return idx if palindrome?(nb + na)
      nb = str[0...-(idx+1)]
      na = str[(str.length-idx)...str.length]
      return str.length-idx-1 if palindrome?(nb + na)
    end
  }
end

gets.strip.to_i.times{
  puts palindrome_index(gets.strip)
}
