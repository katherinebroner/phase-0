# Full name greeting

puts "Hello, what is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Thanks! Your name is " + first_name + " " + middle_name + " " + last_name + "."

# Favorite number

puts "What is your favorite number?"
favorite_number = gets.chomp
new_number = favorite_number.to_i + 1
puts favorite_number + " is a nice number, but wouldn't " + new_number.to_s + " be even better?"

# Reflection

# How do you define a local variable?
# A local variable is defined by using the "=" sign.  You choose what you would like the variable name to be and assign it to the desired object. The object can be a string, integer, or float (there are other types of objects as well).

# How do you define a method?
# A method is defined using "def".  You will enter in the desired parameters, complete your code, and end the method with "end".

# What is the difference between a local variable and a method?
# A local variable is specific to a particular object. A method refers to an action that can be run, which often times includes multiple commands. You can reference a local variable in a method.

# How do you run a ruby program from the command line?
# To run a ruby program from the command line, you type in "ruby <file_name".

# How do you run an RSpec file from the command line?
# To run an RSpec file from the command line, you type in "rspec <rspec_file_name>"

# What was confusing about this material? What made sense?
# The main area I was having difficulty was selecting between the puts, p, and return option when defining my methods. I was able to review the rspec erros and make adjustments as needed.  I saw that even an extra space will cause the code to fail, so I am working on paying close attention to the details and familiarize my self with rspec errors. What made sense in this material is how to define a method and set up parameters to use in a method. I chose to pseudocode each exercise beforehand which helped me think through the problem before writing my code.

# Define method file: https://github.com/katherinebroner/phase-0/tree/master/week-4/define-method

# Address file: https://github.com/katherinebroner/phase-0/tree/master/week-4/address

# Math file: https://github.com/katherinebroner/phase-0/tree/master/week-4/math

