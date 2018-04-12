#!/bin/ruby

# The Person class defined for Day 4: Class vs. Instance
# :reek:DuplicateMethodCall {max_calls: 2}
# :reek:Attribute: false
class Person
  attr_accessor :age
  def initialize(initial_age)
    puts 'Age is not valid, setting age to 0.' if initial_age < 0
    @age = initial_age < 0 ? 0 : initial_age
  end
  def am_i_old?
    case @age
    when 0 .. 12
      puts 'You are young.'
    when 13 .. 17
      puts 'You are a teenager.'
    else
      puts 'You are old.'
    end
  end
  def year_passes
    @age += 1
  end
end

gets.to_i.times{|i|
  age = gets.to_i
  person = Person.new(age)
  person.am_i_old?
  for j in (1..3) do
    person.year_passes
  end
  person.am_i_old?
  puts ""
}
