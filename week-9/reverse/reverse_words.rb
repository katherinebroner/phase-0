# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# => Create a variable for the string
# => Split the string into individual words
# => Convert the string to an array
# => Reverse each word in the string
# => Rejoin the array into a string


# Initial Solution

my_string = "Hello friend"
=begin
def reverse_words (string)
  split_string = string.split(" ")
  string_array = split_string.to_a
  string_array.each do |word|
    word.reverse!
  end
  join_array = string_array.join(" ")
end

puts reverse_words(my_string)
=end


# Refactored Solution
def reverse_words (string)
  string_array = string.split(" ").to_a
  string_array.each {|word| word.reverse!}
  new_string = string_array.join(" ")
end

