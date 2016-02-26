# Your Names
# 1) Katherine Broner
# 2) Jon Norstrom

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

#Initial Code with Comments
rescue def serving_size_calc(item_to_make, num_of_ingredients)
  #how many ingredients needed to make each item
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  #number of items in library
  error_counter = 3

  #test to make sure item you want to make is in the library
  library.each do |food|
    if library[food] != library[item_to_make]
      error_counter += -1
    end
  end

  #will return if item you want to make is not in the library
  if error_counter > 0
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #values_at will return the value equaling the number of ingredients needed to make your food while remaining_ingredients will show how many ingredients are left over
  serving_size = library.values_at(item_to_make)[0]
  remaining_ingredients = num_of_ingredients % serving_size

  #returns how many of a certain item you can make and if there are leftover ingredients
  case remaining_ingredients
  when 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
  end
end

# Refactored Code

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  unless library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  library.each { |key, value|
    if item_to_make == key
      if num_of_ingredients == value
        return "Calculations complete: Make #{num_of_ingredients / value} of #{item_to_make}."
      elsif num_of_ingredients > value
        return "Calculations complete: Make #{num_of_ingredients / value} of #{item_to_make}. You have #{num_of_ingredients % value} items left over to make cookies."
      else
        return "You have #{num_of_ingredients} but you need #{value} to make #{item_to_make}. BUT: You could make #{num_of_ingredients} cookies!"
      end
    end
      }
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)


#  Reflection
=begin
What did you learn about making code readable by working on this challenge?  I learned that it is important to make sure that your variable names are descriptive and easily understood.  I also learned that it is helpful to combine information one loop or section of code to help the reader better follow the flow.

Did you learn any new methods? What did you learn about them?  I did not learn any new methods, be we did implement the include? method.  We implemented in the unless loop to see if an item to make was included in the library.

What did you learn about accessing data in hashes?  I learned that using the .each method is an easy way to access data in the hashes.

What concepts were solidified when working through this challenge?  The concept of writing out pseudocode and going through the steps one at a time was solidified for me.  I found it helpful to read through each section of code and then make a comment about the purpose.  This was helpful during the refactoring process because I looked to combine sections of the code that were similar.  The concept of writing descriptive variable names was also solidified.

=end