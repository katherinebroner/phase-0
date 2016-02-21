# Research Methods

# I spent 2 hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
=begin
Psuedocode
array
create empty container
run through each element of a container
  IF element has x in it
    return that element(store in seperate container and return entire container)
  ELSE
    do nothing, and return nothing
  END
return new container
hash
create empty container
run through each element of input container
  IF element (name) has x value
    store element(name) in new container
  END
return new container
=end

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  found_things_ary = Array.new

  source.each do |x|
    if x.to_s.include?(thing_to_find) == true
      found_things_ary.push(x)
    end
  end
  return found_things_ary
end

def my_hash_finding_method(source, thing_to_find)
  found_things_ary = Array.new

  source.each do |key, value|
    if value == thing_to_find
      found_things_ary.push(key)
    end
  end
  return found_things_ary
end

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
# include? : include works for not only arrays, but also for strings, hashes, and mayber other things too.  What it does is asks a true or false question.  Does this object have this thing inside of it.  For a string, it could be a letter or word or pattern, for an array it will check each object/element.  It doesn't work for numbers though, which is why I had to make sure the numbers were read as strings.

# push : push appends an array with whatever object you choose.  It puts it on right at the end of the array.

# each : each works for arrays and hashes, for an array it goes through each element one at a time.  For a hash, you can define a few different types of each methods.  The one I used was able to go through each key value pair, but others just go through values or just keys.
#

# Person 2
def my_array_modification_method!(sentence_array, increment)
    sentence_array.map! do |word|
        if word.is_a?(Integer)
            word += increment
        else
            word # no change, but needs to be specified or word goes to nil
        end
    end
    return sentence_array
end

def my_hash_modification_method!(age_hash, increment)
    age_hash.each do |pet,age|
        age_hash[pet] += increment
    end
    return age_hash
end

# Identify and describe the Ruby method(s) you implemented.
# > map! changes the elements in the array as it loops through them
# > is_a? checks the datatype


# Person 3
def my_array_sorting_method(array)
    return array.sort_by { |x| x.to_s }
end

def my_hash_sorting_method(hash)
    return hash.sort_by { | k, v | v }
end

# Identify and describe the Ruby method(s) you implemented.
# .sort_by which sorts the array or hash by the defined value/s, in this case, x (array) and v (hash)
# .to_s converts the elements, necessary for the ints, to strings


# Person 4
# input = a list as an array and letter to delete
# scan through list to find words with desired letter to delete
# if word contains the desired letter, delete that workd from the list
# output should be new list without removed words
def my_array_deletion_method!(source, thing_to_delete)
  remove_letter = source.find_all { |letter| letter.to_s.include?(thing_to_delete)}

  remove_letter.each { |word| source.delete(word)}

  p source
end

my_array_deletion_method!(i_want_pets, "t")
p i_want_pets

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  p source
end

my_hash_deletion_method!(my_family_pets_ages, "George")
p my_family_pets_ages
# Identify and describe the Ruby method(s) you implemented.
# # include is an enumerable that returns true if an element in the blockof code contains a certain object being searched for.
# # I used this to determine which strings contains a certain letter.
# # Then using .find_all another enumerable,which returns an array containing all the elements within the block of code,
# # I searched the entire array for strings containing certain letters.
# # Finally .delete simply removes the desired object from the list. It removes the argument within an array, as well as the key and value pair from a hash.
# # .delete was much easier to accomplish with the hash challenge, because we simply just needed to remove on animal from the list.


# Person 5
def my_array_splitting_method(source)
  source.partition { |item| item.class == Fixnum}
end

def my_hash_splitting_method(source, age)
 source.partition { |pet, age| age <= 4}
end

# Identify and describe the Ruby method(s) you implemented.
# The Ruby method I implemented to solve this challenge was the partition method.  The partition method creates two arrays, where you specify what the first array should consist of and the remaining is put into the other array. For the array, I researched the .class method, which allows you to test the object type (Fixnum, String, Object).


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# During my research, I learned about the importance of taking things slow and thinking through the different options and how they will manipulate an object. I also learned about researching very specific aspects of the code you are trying to solve and then incorporate into the larger code.  I enjoy explaining my research process because it allows me to reflect on my researching style and make changes in the future.
#
#
#