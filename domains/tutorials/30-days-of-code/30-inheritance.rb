#!/bin/ruby

class Person
  def initialize(first_name, last_name, id)
    @first_name = first_name
    @last_name = last_name
    @id = id
  end

  def print_person()
    print("Name: ", @first_name, ", " + @last_name, "\nID: ", @id)
  end
end

class Student < Person
  def initialize(first_name, last_name, id, scores)
    super(first_name, last_name, id)
    @average = scores.map(&:to_i).reduce(:+)/scores.size
  end

  # :reek:TooManyStatements { max_statements: 6 }
  def calculate
    @average >= 90 ? 'O' : @average >= 80 ? 'E' : @average >= 70 ? 'A' : @average >= 55 ? 'P' : @average >= 40 ? 'D' : 'T'
  end
end

input = gets.split()
first_name = input[0]
last_name = input[1]
id = input[2].to_i
num_scores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(first_name, last_name, id, scores)
s.print_person
print("\nGrade: " + s.calculate)
