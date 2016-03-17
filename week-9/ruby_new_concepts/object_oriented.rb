# OO Basics: Student


# I worked on this challenge [with Jackie Feminella].
# This challenge took me [3] hours.


# Pseudocode
# 1. Initialize student instance variable that holds a hash for first_name and scores
# 2. Outside of the class, create a new student that calls on the Student Class, and assign a first_name and scores.
# 3. Write an average function that will iterate through the scores and add them together, then divide by the length of the scores array.
# 4. Write an IF/ELSE statement to assign a letter grade based on the average score.
# 5. Write the linear search function to test if a name is included in the students object, return index number if included, return -1 if not.


# Initial Solution
=begin
class Student
  attr_accessor :scores, :first_name

  def initialize(student) #argument
    @first_name = student[:first_name]
    @scores = student[:scores]
  end

  def average
    sum = 0
    @scores.each {|num| sum += num}
    average = sum/@scores.count
    return average
  end

  def letter_grade
    average
    if average >= 90
      return "A"
    elsif average >= 80
      return "B"
    elsif average >= 70
      return "C"
    elsif average >= 60
      return "D"
    else
      return "F"
    end
  end
end

alex = Student.new({first_name: "Alex",scores: [100,100,100,0,100]})
kat = Student.new({first_name: "Kat", scores: [100,80,50,75, 100]})
students = [alex, kat]

def linear_search(array, first_name)
  index = 0
  if array[index].first_name == first_name
    return index
  index += 1
  else
    return -1
  end
end

linear_search(students, "Alex")
=end

# Refactored Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(student) #argument
    @first_name = student[:first_name]
    @scores = student[:scores]
  end

  def average
    sum = 0
    @scores.each {|num| sum += num}
    average = sum/@scores.count
  end

  def letter_grade
    case average
    when 90..100 then "A"
    when 80..89 then "B"
    when 70..79 then "C"
    when 60..69 then "D"
      else"F"
    end
  end
end

alex = Student.new({first_name: "Alex",scores: [100,100,100,0,100]})
kat = Student.new({first_name: "Kat", scores: [100,80,50,75, 100]})
students = [alex, kat]

def linear_search(array, first_name)
  index = 0
  if array[index].first_name == first_name
    return index
  index += 1
  else
    -1
  end
end

linear_search(students, "Alex")





# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

alex.letter_grade



p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection

# What concepts did you review in this challenge?

# I reviewed the concept of creating a Class object and writing different functions within the Class. I also reviewed how to create hashes within a class and access items within the hash to use in a function.

# What is still confusing to you about Ruby?

# Part of the challenge that was confusing was creating the initial students variable and properly assigning the key/value pairs. I am also still looking at ways to refactor my code.

# What are you going to study to get more prepared for Phase 1?

# I would like to further review classes and accessing items within arrays and hashes.