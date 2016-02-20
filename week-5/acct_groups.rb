# Create Accountability Groups

=begin

Pseudocode

Input: List of students in the DBC Cohort
Output: List of all accountability groups

Steps
- Create a list of students in the DBC cohort.
- Create a new array that will hold the lists of the accountability groups.
- Randomly select 5 students from the original list of students.  These 5 students will make up an accountability group.
- Add group to the new array.
- Remove these 5 students from the main pool.
- Continue the process until the main group of students is 0.
- Print out the new array of the accountability groups.

=end
rock_doves = ["Adam P", "Afaan N", "Alana F", "Andrew C", "Andrew V", "Anna L", "Benjamin H", "Blair W", "Brad L", "Brian D", "Brittney B", "Camila C", "Charlie L", "Chunyu O", "Daniel H", "Daniel S", "David K", "David R", "Emily O", "Emmet G", "Eric G", "Gregory T", "Hanna T", "Dave H", "Jack B", "Jaclyn F", "Jasmeet C", "Jason A", "Jon N", "Jonathan N", "Joseph Y", "Joshua L", "Joshua W", "Julia G", "Kari G", "Katherine B", "Kevin F", "Kevin N", "Kevin P", "Leo K", "Li-Lian K", "Erica L", "Maria D", "Michael V", "Milorad F", "Brian M", "Nick R", "Noah S", "Oscar D", "Ryan D", "Ryan W", "Sami Z", "Saralis R", "Sean N", "Shyh H", "Sydney R", "Theo P", "Tomasz S", "Wesley E"]

def acct_group(list)
  new_array = []
  while list.count != 0
    group = list.sample(5)
    new_array.push group
    for person in group
     list.delete(person)
    end
   end
  new_array
end

p acct_group(rock_doves)

# Each accountability group is an array within new_array (which holds all acountability groups)

#Reflection

=begin

What was the most interesting and most difficult part of this challenge?  The most interesting part of this challenge was being able to create the random groups and prevent them from repeating.  I didn't have too much diffuclty creating the first sample group and removing it from original group.  The most difficult part was finding the best method iterate through the current list and create multiple groups that do not repeat.

Do you feel you are improving in your ability to write pseudocode and break the problem down?  Yes, I feel like my psuedocode is improving and I am seeing the importance of breaking the problem down into very small steps.  It helps me stay on track and follow a process.  I noticed that for this challenge, I initially made it too complicated, and saw the importance of keeping my pseudocode very basic.

Was your approach for automating this task a good solution? What could have made it even better?  I think my approach for automating the task using a while loop was a good solution because it continued running until the original list was empty.  The iteration could have been made better using the do method and iterating through with a Ruby enumerable.  I find it helpful to find different methods to solve the same problem.

What data structure did you decide to store the accountability groups in and why?  I chose to store my accountability groups in an array within a larger array that held all the accountability groups.  By having each group in its own array, a viewer could call and distinguish which students were in different groups.  To keeps things more organized, I moved each accountability group into a new array I created.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?  I learned the importance of keeping my initial solution very basic.  I was making things too complicated and was able to refactor by creating an iteration loop to make things more concise.  The main struggle was figuring out how to structure the iteration loop.  I learned the push method to add the accountability group to the new array and the delete method to remove students from the original list.


end