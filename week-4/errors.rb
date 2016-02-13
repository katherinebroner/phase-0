# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#{}"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The error is in line 16. An additional end is needed to close the while loop.
# 6. Why did the interpreter give you this error?
# Because there was no designation to end the loop.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# Name Error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# south_park has not been identified as a variable or method, it is unidentifiable to the computer
# 5. Why did the interpreter give you this error?
# Because south_park was not properly defined

# --- error -------------------------------------------------------

# cartman()
# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# No Method Error
# 3. What additional information does the interpreter provide about this type of error?
# undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# The error is occuring because the method 'cartman' has not been defined.
# 5. Why did the interpreter give you this error?
# Because in order to call a method it must first be defined.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 64
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The error is in the method definition - a parameter needs to be given so the argument can be run
# 5. Why did the interpreter give you this error?
# Because when the method is called, there is one argument, but the method was not defined with a parameter.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# 83
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# The error is that a parameter was given but an argument was not passed through when the method was called. The error could also be that an argument needs to be put in in order to call the method properly.
# 5. Why did the interpreter give you this error?
# Because the computer is expecting an argument to be passed through (because of the parameter that was given) but no argument has been provided.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 104
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# The error is in line 104 because 2 parameters were given but only one argument was passed through. Would need to remove the 'name' parameter or add an additional argument to the method call. You must have the same number of parameters and arguments.
# 5. Why did the interpreter give you this error?
# Because the number of parameters (2) did not equal the number of arguments (1)

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# 123
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The error in the code is that you cannot force a string to be converted into a fixed number.  When multiplying a string and number, the string must go first, and then the number (because you are telling the program to make multliples of the string)
# 5. Why did the interpreter give you this error?
# Because you cannot convert a string into a fixed number.  The string must go before the number in this type of situation.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 138
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# `/': divided by 0
# 4. Where is the error in the code?
# The error is that the number 20 is being divided by 0
# 5. Why did the interpreter give you this error?
# There is an error because you cannot divide a number by zero. Note - can divide 0 by a number but not the other way around.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 154
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# in `require_relative': cannot load such file -- /Users/katherinebroner/Desktop/DBC/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
# The error is that the md file is not in the current directory as the ruby file.
# 5. Why did the interpreter give you this error?
# Becauase both files are not in the same directory, which is necessary for require_relative.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# The error I found most difficult to read was the error referencing the end - unexpected end-of-input, expecting keyword_end. This was confusing initially because it was referencing the line number at the end of the document rather than the section where the code was written.
#
# For this error, I reviewed the code and was then able to realize that an 'end' was missing. The interpreter was looking to the end of the entire file for end since it was not properly completed in the method.
#
# I was able to determine why each error message had happened by mainly review the error type and the comments. Once I reviewed the comment, I looked back over the code and was able to identify where the error had occurred.
#
# When I encounter errors in my future code, I would like to have a process that is simple and stress-free. First, I going to stay relaxed and trust that the solution to to error is all given to me within the code. I want to avoid getting stressed out because I feel like that only makes the situation worse and leads to more errors. I will read through the error message and write it down on a piece of paper since I like to have material to reference. I will then review the code I have written to identify where the error occurred. If I am still having difficulty, I will take a break and/or reach out to a peer for help.