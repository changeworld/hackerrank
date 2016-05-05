# Enter your code here. Read input from STDIN. Print output to STDOUT
require 'mathn'
length = gets.to_i
palindrome = []
Prime.instance.each do |prime| break unless palindrome.length < length; palindrome << prime if prime.to_s == prime.to_s.reverse end
puts '[' << palindrome.join(', ') << ']'
