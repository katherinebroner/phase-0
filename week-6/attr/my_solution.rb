#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# Pseudocode

# Input: variable with my name
# Output: will print out a statement that says 'Hello Katherine! How wonderful to see you today.'
# Steps:
# => create an attr_reader for name in the NameData class
# => initialize the class with the my_name variable
# => in Greetings, initalize NameData class as .new
# => in Greetings, define a method called greet
# => in the greet method, pull in the NameData class to reference my_name in the greeting

class NameData

  attr_reader :name

  def initialize
    @name = "Katherine"
  end

end

class Greetings

  def initialize
    @name_data = NameData.new
  end

  def hello
    puts "Hello #{@name_data.name}! How wonderful to see you today."
  end

end

greet = Greetings.new
greet.hello

# Reflection
=begin
Release 1:
  What are these methods doing: these methods are initializing the variables (age, name, occupation), defining how information should be printed, and defines the methods for returning the current information and changed information.

  How are they modifying or returning the value of instance variables? The first set of functions are returning the initial instance variables that were created. The change methods are modifying the original instance variables with the new information that is provided.

Release 2:
  What changed between the last release and this release?  @age changed between the last release and this release. attr_reader was created for age.  Can now call method using .age instead of what_is_age.

  What was replaced?  Creating the attr_reading replaced the what_is_age method.

  Is this code simpler than the last?  Yes, this code is simpler than the last because it replaces a method that had 3 lines with the simple attr_reader :age line.

Release 6

  What is a reader method?  A reader method simply reads and returns the value of the instance variable.

  What is a writer method?  A writer method changes the value of the instance variable.

  What do the attr methods do for you?  The attr methods help to shorten the code for reading and writing your instance variables.  It also allows you to read/write multiple instance variables at the same time.

  Should you always use an accessor to cover your bases? Why or why not? You do not always want to use accessor because making all instance variables changeable could cause issues in your code in the future. It could also compromise the security of your information because too much access is being given. While the accessor method helps to keep code concise, it is still important to use the attr methods for their main purpose.

  What is confusing to you about these methods?  I am comfortable with the reader method, but still having some difficulty understanding the writer method. I will do some more research on this and get clarity in office hours. As I continue working through the material, I think I will become more comfortable with the methods. Another area I have been trying to work on is calling an instance variable with my name outstide of the class, but I have been having trouble with an argument error. Will continue working on it and check during office hours.

=end