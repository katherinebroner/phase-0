# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input:A list of strings
# Output: A randomly selected string from the list
# Steps:
  # Create a Die class
  # Create a variable called labels, which will contain the list of strings
  # Add an argument error if an empty array is used as input
  # Write a method that will randomly select one item from the list of strings


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    if @labels.empty?
      raise ArgumentError.new("List cannot be empty - must contain at least one string.")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# Refactored Solution

# code is concise - nothing to refactor


# Reflection
=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?  The main difference between this die class and the last one was defining sides based on the length of the the array (labels).  The logic did not need to change much.

What does this exercise teach you about making code that is easily changeable or modifiable?  This exercise taught me that it is important to have concise and readable code, so that items can be changed easily and be understood.

What new methods did you learn when working on this challenge, if any?  I learned about the empty? method, which returns true if the array is empty.  I also learned about the sample method, which returns a one item that is randomly chosen from the list.  In the previously die challenge I used rand, but I prefer sample when choosing from a list.

What concepts about classes were you able to solidify in this challenge?  The argument error should generally be placed in the initialize section of the code.  Within the methods of a class, you can use all Ruby methods.

=end