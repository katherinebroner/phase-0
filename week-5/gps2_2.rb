# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Convert the string of items into an array. (split method)
  # set default quantity of 1 for the list
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?] We would want to create a hash to show the grocery item and the quantity.

# Method to add an item to a list
# input: item name and optional quantity
# steps: Add grocery item and quanity to the end of the current list.
# output: The updated list with the new grocery items and quantity.

# Method to remove an item from the list
# input: item name and optional quantity
# steps: Remove grocery item and quantity from the current list.
# output: The updated list with the specific grocery item and quantity removed.

# Method to update the quantity of an item
# input: item name and quantity
# steps: Access the grocery item we would like to update. Update the quantity.
# output: Grocery item with updated quantity.

# Method to print a list and make it look pretty
# input: Entire grocery list and quantities
# steps: Print out each grocery item and quantity in our list.
# output: Each grocery item and quantity in our list.

def grocery_list(items, default = 1)
    hash = Hash.new
  items.split(' ').each { |item|
    hash[item] = default }
  hash
end

def add_item(list, item, quantity, default = 1)
  list[item] = quantity
  list
end

def remove_item(list, item)
  list.delete(item)
  list
end

def update_quantity(list, item, quantity)
  list[item] = quantity
  list
end

def print_list(list)
  p list
end

my_list = grocery_list('apple banana cherry')

p add_item(my_list,"orange", 2)

p remove_item(my_list, "banana")

p update_quantity(my_list, "apple", 2)

print_list(my_list)

=begin

Reflection

What did you learn about pseudocode from working on this challenge?
I learned that pseudocode is the most important step when working through a challenge.  It is important to write out the code in as close to English and possible and discuss the steps to be completed rather than listing out possible Ruby methods.  It is easy to reference while writing the code and keeps the process moving smoothly.

What are the tradeoffs of using Arrays and Hashes for this challenge?
With an array, you would not be able to link any of the quantities to the item.  It is most beneficial to use a hash for this exercise because you can assign a specific grocery item to a quantity.

What does a method return?
A method returns the last item that was run in the code.  In this challenge, when we added or updated items, we needed to return the list at the end of the code to ensure that it would return properly.

What kind of things can you pass into methods as arguments?
You can pass in other methods as arguments - this is done by creating a variable that represents the desired method and link that variable in the method you are currently working on.  It is important to distinguish between local variables and global variables - which can be addressed by setting up the proper parameters. You can also pass in strings, arrays, hashes, numbers, and more.

How can you pass information between methods?
To pass information between methods, you need to create a global variable that is assigned to the specific method you would like to reference.  This variable can then be passed through the current method as an argument, and will run all methods accordingly.

What concepts were solidified in this challenge, and what concepts are still confusing?
One concept that was solidified was how to create, add, remove and modify items in a hash. I am becoming more comfortable using the each method and will continue to practice until I feel more comfortable with it.  It was somewhat confusing when we had to use the each method to convert the array into a hash.  This was the first time I was introduced to the concept of passing information between methods, which was very helpful.

end