# Numbers to Commas Solo Challenge

# I spent 4 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
# What is the input? A number
# What is the output? The number including commas in the approprite spot.
# What are the steps needed to solve the problem?
- Convert number to a string
- Separate the number into individual elements within a list
- Determine the pattern of where commas need to be inserted (after began working on problem, found that pattern was that the first comma starts at index -4, and then continues in increments of -3 (e.g -4, -7, -10))
- Implement the pattern to allow the number of commas be inserted for any number (keep a limit on the size of the number and make sure it follows the pattern)
- Once commas have been added, return the number into one individual element.
=end

# 1. Initial Solution

def separate_comma(number)
  number_string = number.to_s
  number_array = number_string.split(//)
  characters = number_array.length
  position = -4
  while position >= -characters
    number_array[position] += ","
    position -= 3
  end
  number_array.join("")
end


# 2. Refactored Solution
=begin

I found it difficult to locate a Ruby method on Ruby docs because for my solution I do not need to iterate through each item in the array, only the items at the indexes I have specified. I was looking for a method that would allow me to insert an item at certain indexes, but could not find anything. Another way to solve this challenge may be to use the reverse method for the array and then iterate through to insert the commas where needed. When adding commas, I find it easier to look at the problem by starting at the end of the number rather than the beginning. I am interested to see how others approached the problem and what methods were used.

end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?  My process for breaking the problem down was to detail out each step in the psedocode. I found it helpful to write my process out on paper and then test out the numbers to figure out the pattern. I worked on the code in CoderPad, where I chose to test out each specific part of the code one at a time to make sure things were working properly. This helped me identify the areas of the code that were successful and the areas I was having difficulty.

Was your pseudocode effective in helping you build a successful initial solution?  I think my pseudocode was effective in helping me build a successful initial solution, mainly in the beginning and end of solving the problem. While in the pseudocode I did discuss implementing the pattern, I found this the most difficult part of the challenge because I was not sure which iteration process I wanted to use. I was jumping from one to the other, which I think caused confusion on my end. In the future, I would like to work on each possibilty more thoroughly before moving on to the next option.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?  I did not have a refactored solution because my initial solution incorporated a few Ruby methods. For my solution, I researched split and join to make sure I was implementing them properly. I could find any methods to help with the process I chose for iteration, but will keep an eye out as I continue working through the challenges. I find that a lot of the basic Ruby methods are helpful in simplifying the process. I would like to get more comfortable with researching the detailed Ruby array and enumerable methods.

How did you initially iterate through the data structure? When I was initially working through the problem, I tested out many different structures. I tried using the do loop, if loop, for loop, and while loop but was not fully successful in all of them. This was causing confusion because I was jumping between different ones and lost my place at times. However, I knew I was close to finding a solution and went to office hours to help put my strategy for solving the iteration section in code. I found it difficult early on because I knew the pattern but was having trouble implementing the right structure.

Do you feel your refactored solution is more readable than your initial solution? Why?  I chose to keep my refactored solution the same as the initial solution because I felt that my initial solution was readable and incorporated Ruby methods. I am still in the learning phase of researching new methods but hope to continue developing this skill. I think reviewing the solutions my peers came up with will also help me gain exposure to other methods I did not think of.
=end