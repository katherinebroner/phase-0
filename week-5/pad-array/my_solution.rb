# Pad an Array

# I worked on this challenge with Dan Shapiro.

# I spent 2 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
=begin
Input is the 3 arguments used in the method.
  The first input is the array of numbers.
  The second input is the minimum size of the new array.
  The third (optional) input is the object that will be used to fill the space between the original array size and the required minimum size of the new array.

# What is the output? (i.e. What should the code return?)

The code should return a new array that meets the minimum length requirements. This array will contain the original array input plus the additional object that was chosen to pad the array.  The non-destructive method will not change the original array. The destructive method will replace the original array.

# What are the steps needed to solve the problem?

Step 1: Figure out how many indexes need to be added to the new array (if any).  We will do this by subtracting the minimum array length of the original array from the required minimum length of the new array.

Step 2: IF statement: if the required minimum array length is equal to the original array length, return the original array.

Step 3. IF statement: if there is a difference between the minimum allowed and the original array, return new array with the original and add the necessary number of the padding object.

Step 4: IF destructive method: replace old array with new array.  IF non-destructive method: do not replace old array with new array.
=end


# 1. Initial Solution

def pad!(array, min_size, value = nil)
  if min_size - array.length == 0
    return array
  else
    array.fill(value, array.size, )
    return array
  end
end

def pad(array, min_size, value = nil)
  array2 = array.clone
  if min_size - array.length == 0
    return array2
  else
    #array2 = array.clone
    array2.fill(value, array.size, min_size - array.length)
    return array2
  end
end



# 3. Refactored Solution

def pad!(array, min_size, value = nil)
  required_padding =  min_size - array.length
  if required_padding == 0
    array
  else
    array.fill(value, array.size, required_padding)
  end
end

def pad(array, min_size, value = nil)
  required_padding =  min_size - array.length
  array2 = array.clone
  if required_padding == 0
    array2
  else
    #array2 = array.clone
    array2.fill(value, array.size, required_padding)
  end
end

# 4. Reflection

=begin
Were you successful in breaking the problem down into small steps?
Yes, it was extremely helpful in the beginning to write out the pseudocode and detail out each step in the proccess. We were able to reference our steps while we were writing our code and it helped keep us on the right track.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
There were some areas that were more difficult to transalte than others.  We were successful in figuring out how to calculate the remaining items that needed to fill the array and writing a line if the array length was already the same as the required length. We ran into difficulties when we started working on the second portion and it took some time to figure out the best way to to add the additional padding to the code.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
Our initial solution was not successful at passing the tests, mainly due to our difficulty finding the correct looping method to use.  We were having difficultly with the proper input for the fill method, but tested out a few different options and were able to get to the correct solution.

When you refactored, did you find any existing methods in Ruby to clean up your code?
We used the fill and clone method to help clean up the code.  We also assigned the variable required_padding to eliminate some repetition we had in our initial solution.

How readable is your solution? Did you and your pair choose descriptive variable names?
Our solution is very readable.  We chose to pick variable names that descripted the operation we were completing, so that any user would be able to understand and follow the code.

What is the difference between destructive and non-destructive methods in your own words?
With a destructive method, the original array is replaced completely by the new array you create in your method.  When you call the array, the new array is returned and you can no longer access the original array.  A non-destructive method allows you to create a new array that is separate from the original array.  This is beneficial because you can still access the original array.
=end

