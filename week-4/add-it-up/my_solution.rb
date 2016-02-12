# Add it up!


# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array of numbers
# Output: Sum of the numbers
# Steps to solve the problem

# Iterate through the array
# Add each number in the array together




# 1. total initial solution

def total (list_of_nums)
  sum = 0
  list_of_nums.each do |number|
    sum = sum + number
  end
  return sum
end



# 3. total refactored solution

def total (list_of_nums)
  return list_of_nums.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: Each string added together to make a sentence
# Steps to solve the problem.

# Iterate through the array
# Add space and make into sentence
# First item is capitalized
# Last item add a period at end


# 5. sentence_maker initial solution

def sentence_maker (list_of_strings)
 sentence = ""
 list_of_strings.each do |string|
   string = string.to_s
   sentence = sentence + string + " "
 end
 return sentence.capitalize.chop + "."
end


# 6. sentence_maker refactored solution

def sentence_maker (list_of_strings)
  return  list_of_strings.join(' ').capitalize << "."
end