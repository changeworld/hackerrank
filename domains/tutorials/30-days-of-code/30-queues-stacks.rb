# create the Solution class
# :reek:SubclassedFromCoreClass:enabled:false
class Solution < Array
  alias :push_character :push
  def enqueue_character(_)
  end
  alias :pop_character :pop
  alias :dequeue_character :shift
end

solution = Solution.new
input = gets
input.split('').each {|c|
  solution.push_character c
  solution.enqueue_character c
}
is_palindrome = true
(input.length / 2).times do
  if solution.pop_character != solution.dequeue_character
    is_palindrome = false
    break
  end
end

if is_palindrome
  puts "The word, #{input}, is a palindrome."
else
  puts "The word, #{input}, is not a palindrome."
end
