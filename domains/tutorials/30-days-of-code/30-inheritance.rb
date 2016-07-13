#!/bin/ruby

class Person
  def initialize(firstName, lastName, id)
    @firstName = firstName
    @lastName = lastName
    @id = id
  end
  def printPerson()
    print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
  end
end

class Student <Person
# write start
  def initialize(firstName, lastName, id, scores)
    super(firstName,lastName,id)
    @average = scores.map(&:to_i).reduce(:+)/scores.size
  end

  def calculate
    @average >= 90 ? 'O' : @average >= 80 ? 'E' : @average >= 70 ? 'A' : @average >= 55 ? 'P' : @average >= 40 ? 'D' : 'T'
  end
# write end
end

input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
numScores = gets.to_i
scores = gets.strip().split().map!(&:to_i)
s = Student.new(firstName, lastName, id, scores)
s.printPerson           
print("\nGrade: " + s.calculate)
