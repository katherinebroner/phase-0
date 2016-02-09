Release 1: Summarize

What does puts do?
Puts returns nil and prints the output to the console with a new line. Puts does not pass on information, it only outputs the result to the console.

What is an integer? What is a float?
An integer is a number without decimals (e.g. 2). A float is a number with decimals (e.g. 2.5).

What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
The main difference between float and integer division is that if you divide to integers, the answer will always be an integer. For example, if you enter 9/2 into the console, the output would be 4. The answer is always rounded down. If two floats are divided, the output will be a float. For example, 9/2 would result in 4.5. It is also important to note that if one of the numbers in a float, the output will be a float. For example, if you enter 9.0/2, the output will be 4.5 because 9.0 is a float.

'''ruby
# Hours in a Year

puts 24 * 365 #hours in a day * days in a Year

# Minutes in a decade

puts 60 * 24 * 365 * 10 #minutes in an hour * hours in a day * days in a year * 10 years in a decade
'''