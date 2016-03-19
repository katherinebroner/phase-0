# FizzBuzz

# Pseudocode
# 1. Create an array of numbers
# 2. Use the each method to iterate through each number in the array
# => IF num % 15 = 0 : "Fizz Buzz"
# => ELSIF num % 3 = 0 : "Fizz"
# => ELSIF num % 5 = 0 : "Buzz"

num_array = [1, 5, 15, 36]

# Initial
=begin
def super_fizzbuzz (array)
  array.each_with_index do |num, index|
    if num % 15 == 0
      array[index] = "FizzBuzz"
    elsif num % 3 == 0
      array[index] = "Fizz"
    elsif num % 5 == 0
      array[index] = "Buzz"
    else
      num = num
    end
  end
  return array
end

puts super_fizzbuzz(num_array)
=end
# Refactor
=begin
def super_fizzbuzz (array)
  array.each_with_index do |num, index|
    if num % 15 == 0 then array[index] = "FizzBuzz"
    elsif num % 3 == 0 then array[index] = "Fizz"
    elsif num % 5 == 0 then array[index] = "Buzz"
    end
  end
end

puts super_fizzbuzz(num_array)
=end
def super_fizzbuzz (array)
  array.map do |num|
    if num % 15 == 0 then num = "FizzBuzz"
    elsif num % 3 == 0 then num = "Fizz"
    elsif num % 5 == 0 then num = "Buzz"
    else num = num
    end
  end
end