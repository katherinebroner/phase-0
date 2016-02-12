# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
 if number == 0
   return 1
 else
     count = number - 1
     factorial = number
     while count > 0
       factorial = factorial * count
       count -= 1
     end
 end
 return factorial
end
