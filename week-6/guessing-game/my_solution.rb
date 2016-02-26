# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An integer that user is guessing
# Output: Will return high, correct, or false, depending on the guess
# Steps:
# Initialize the answer variable
# Initialize the guess variable
# Define guess, which will test if the guess matches the answer
#   IF guess > answer, :high
#   ELSIF guess == answer, :correct
#   ELSE guess < answer, :low
# Define solved, which will return as true if the guess equals the answer

# Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def answer
    @answer
  end

  def guess(guess)
    @guess = guess
    if @guess > @answer
      return :high
    elsif @guess == @answer
      return :correct
    else
      return :low
    end
  end

  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end


# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  attr_reader :answer

  def guess(guess)
    @guess = guess
    if @guess > @answer
      :high
    elsif @guess == @answer
      :correct
    else
      :low
    end
  end

  def solved?
    if @guess == @answer
      true
    else
      false
    end
  end
end


# Reflection
=begin

How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?  Instance variables and methods represent real-world objects because the variable can be called with new arguments passed in.  These arguments will then be used in the method.

When should you use instance variables? What do they do for you?  Instance variables should be used for a particular instance of a class (represented by @ sign).  They should be able to be called from a method.  The instance variable is created and then items can be assigned to the variable using the .new method.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?  When using flow control, I find it helpful to write out detailed pesudocode beforehand to map out the process.  I did not have too much trouble using it, as I chose to create if loops for my methods.  The only challenge was initializing @guess in the right code block, which was done within the code method.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?  I think this code requires symbols because they are immutable and unique.  Symbols cannot be changed, which prevents potential errors in the future.  In addition, it is more readable and concise.

=end