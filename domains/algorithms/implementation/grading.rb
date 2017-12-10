#!/bin/ruby

# :reek:DuplicateMethodCall { max_calls: 2 }
# :reek:UtilityFunction:public_methods_only: true
def solve(grades)
  result = []
  grades.map{|grade|
    result.push((grade >= 38 && grade % 5 >= 3) ? grade + 5 - (grade % 5) : grade)
  }
  result
end

n = gets.strip.to_i
grades = Array.new(n)
for grades_i in (0..n-1)
  grades[grades_i] = gets.strip.to_i
end
result = solve(grades)
print result.join("\n")
