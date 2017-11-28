#!/bin/ruby

# :reek:DuplicateMethodCall { max_calls: 4 }
# :reek:FeatureEnvy:exclude
# :reek:TooManyStatements { max_statements: 7 }
# :reek:UtilityFunction:public_methods_only: true
def anagram(str)
  return -1 if str.size % 2 == 1
  cnt = 0
  stra, strb = str[0, str.size/2], str[str.size/2, str.size-1]
  stra.chars{|ch|
    if s2.include?(c1)
      s2.slice!(c1)
    else
      cnt += 1
    end
  }
  cnt
end

t = gets.strip.to_i
for _ in (0..t-1)
  puts anagram(gets.strip)
end
