# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 2 hours on this challenge.

# 0. Pseudocode

# Input: Die with specified number of sides
# Output: Random number that is returned after the die is rolled.
# Steps:
=begin

- Create a Class called Die
- Create a variable called sides (will be used to specify the number of sides)
- Define the number of sides the die has
- Roll the die to pick a random side

=end


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Only numbers greater than 1 are allowed")
    end
  end

  def sides
    @sides
  end

  def roll
    1 + rand(@sides)
  end
end



# 3. Refactored Solution

#Could not find enumerable method.





# 4. Reflection
=begin

What is an ArgumentError and why would you use one?  An ArgumentError raises an issue if the object does not fall into a specified requirement. It tells the user that there is a problem and their input needs to be adjusted. In this exercise, we used the ArgumentError to prevent the number of sides from being negative.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?  The new ruby methods I implemented was raise for the ArgumentError.  Initially, I was having difficulty figuring out how to define the argument error, but did some research to find the proper structure. I then was not sure where to put it, but was able to look at the spec file for guidance. I found it successful in my ability to resarch the issues and find a solution.

What is a Ruby class? A class is an Object in Ruby that allows you to group methods together that are related.

Why would you use a Ruby class? It is beneficial to create a Ruby class because it allows you to define methods one time, using multiple inputs related to that method. This keeps the code very compact and can be used in a simple way for a large amount of data.

What is the difference between a local variable and an instance variable? A local variable is only available to certain methods.  An instance variable is available to a particular instance of a class.

Where can an instance variable be used? An instance variable can be referenced within different instance methods of the class.
=end