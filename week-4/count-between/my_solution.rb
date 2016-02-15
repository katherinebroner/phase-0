# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below

def count_between (list_of_integers, lower_bound, upper_bound)
  if upper_bound < lower_bound
    return 0
  end
  if lower_bound == upper_bound
    return list_of_integers.count
  end
  range = (lower_bound..upper_bound).to_a
  list_of_integers.select { |number| range.include?(number) }.count
end

# Notes
# if statements first to go through potential outcomes. Convert range into an array using the .to_a function. Use select method to choose all items in the array that fall within the range. Then, count those items in the array. This method leaves out numbers that fall out of the range specified.