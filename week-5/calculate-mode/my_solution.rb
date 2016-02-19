
# Calculate the mode Pairing Challenge

# I worked on this challenge with Mike.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode

# What is the input? Array of numbers or strings
# What is the output? (i.e. What should the code return?) An array of the number or numbers that occur most frequently
# What are the steps needed to solve the problem?

#   take array and convert to hash to show the number of times each item appears in the list
#   iterate through hash to select item/items that appear most
#   Move selected items into own hash
#   Move item key into its own array (this array will contain item or items that appeared most)
#   return array


# 1. Initial Solution

def mode (array)
  hash = Hash.new (0)
  array.each { |item|
    hash[item] += 1}
  hash

  frequency = hash.values.max
  new_array = []

  hash.each { |key, value|
    if frequency == value
      new_array.push(key)
    end}
  new_array
end



# 3. Refactored Solution

def mode (array)
  hash = Hash.new (0)
  array.each { |item| hash[item] += 1}
  frenquency = hash.values.max
  hash.select { |key, value| value == frenquency }.keys
end


# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?  The data structure we chose to use was a hash because we could assign each item (key) to the number of times it appeared in the array (value).

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?  In both of my pairing sessions we were able to implement the pseudocode effictively.  It is helpful to discuss each step and have a proces set up.

What issues/successes did you run into when translating your pseudocode to code?  One area we were having difficulty was selecting the keys that had the highest value.  We had to test out a few different options and researched the .values.max method, which allowed us to select the key-value pair that appeared the most.  We were able to implement this in the .each method to return the array with the most frequent value.

What methods did you use to iterate through the content?  To iterate through the content in our initial solution, we chose to use the .each method to create the original hash and then push the most frequent values to a new hash.

Did you find any good ones when you were refactoring? Were they difficult to implement?  Yes, we found the .select method during our refactoring stage.  It was very helpful because we could specify what we wanted the computer to return into a new array.  It took some time to get everything to run properly and we were able to add the .keys method to the end which allowed us to return the actual key that was most frequent.
=end