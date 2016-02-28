# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 1
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================

p nested_data [:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

#Initial Solution

outer_index = 0
while outer_index < number_array.length
   if number_array[outer_index].kind_of?(Array)
     inner_index = 0
     while inner_index < number_array[outer_index].length
       number_array[outer_index][inner_index] += 5
       inner_index += 1
     end
   else
     number_array[outer_index] += 5
   end
   outer_index += 1
 end
 p number_array

 #Refactored Solution

number_array.collect! do |outer|
  if outer.kind_of?(Array)
    outer.collect! do |inner|
      inner + 5
    end
  else
    outer + 5
  end
end
p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.collect! do |element|
  if element.kind_of?(Array)
    element.collect! do |inner|
      if inner.kind_of?(Array)
        inner.collect! { |item| item + "ly"}
      else
        inner + "ly"
      end
    end
  else
    element + "ly"
  end
end
p startup_names

#Reflection
=begin

What are some general rules you can apply to nested arrays?  When working with nested arrays, a general rule is work from the outermost array to the innermost array.

What are some ways you can iterate over nested arrays?  To iterate over nested arrays, you first iterate over the outermost array. Then you write an if statement to check if any of the items are arrays (an inner array). You can then perform a task on the inner array using the .each method. It is important to note that when iterating over a nested array, you must create if statements until you have reached the innermost array and then work backwards by using else. This prevents any errors in your code.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?  Yes, we used the collect! method when were iterating and changes the elements in the array.  Collect allows you to iterate through the array and can also be made destructive by using the bang !. We found this to be a helpful way to refactor our code and make things more concise.
=end