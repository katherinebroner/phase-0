# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Jackie Feminella.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Credit card number
# Output: If the credit card is valid or not (true or false)
# Steps:
# Create a class called CreditCard
# read the credit card number (variable will be called credit_card_number)
  #attr_reader :ccnum
# initialize a method for credit_card_number
  # def initialize(ccnum)
  #  @ccnum = ccnum.to_s
  #  print ccnum
# create argument argument error if ccnum is not 16 digits
  #check the length
# write a method to separate each number (with spaces and no commas), put this in a list (array)
# iterating over index to double every other digit starting at second to last.
  # even index numbers if going backwards
# split the digits into single digits
# add the digits together
# check if total is divisible by 10 (modulo)
# return true is cc is valid and false if not


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard

  attr_reader :ccnum

  def initialize(ccnum)
    @ccnum = ccnum.to_s.split('').map(&:to_i)
    if @ccnum.length != 16
      raise ArgumentError.new("This credit card number is not 16 digits.")
    else puts "That's the right length!"
    end
  end

  def double_digit
    digits = @ccnum.length
    position = -2
    while position >= -digits
      @ccnum[position] = @ccnum[position] * 2
      position -= 2
    end
    #p ccnum
  end

  def check_card
    double_digit
    @ccnum = ccnum.to_s.split('').map(&:to_i)
    #p ccnum
    sum = 0
    @ccnum.each { |num| sum += num }
    #return sum
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end
=end

# Refactored Solution

class CreditCard

  attr_reader :ccnum

  def initialize(ccnum)
    @ccnum = ccnum.to_s
    raise ArgumentError.new("This credit card number is not 16 digits.") unless @ccnum.length == 16
  end

  def check_card
    @ccnum = @ccnum.reverse!.split('').map!.with_index do |num, index|
      if index.odd?
        (num.to_i * 2).to_s
      else
        num
      end
    end
    sum = 0
    @ccnum.join.split('').each { |num| sum += num.to_i }
    if sum % 10 == 0
      true
    else
      false
    end
  end
end

# Reflection
=begin

What was the most difficult part of this challenge for you and your pair?  The most difficult part for us was figuring out how to properly iterate through the array to only multiply the proper digits.  We also had some trouble with conversions between strings and integers - which was difficult when performing multiplication and division operations. In our initial solution, we had to call double_digit, but did not realize at first that it needed to be called in the check_card method.

What new methods did you find to help you when you refactored?  For refactoring, we used the reverse, split, map, with_index, and join method.  The reverse helped us reverse the order of the array (since we wanted every odd index once reversed) and we used split to separate each number into a single item in the array.  Map allowed us to create a new array and iterate through it at the same time, in conjunction with with_index, we were able to search the indexes. Join allowed us to join the numbers together after they were doubled, so we could then re-split them as individual items.

What concepts or learnings were you able to solidify in this challenge?  I was able to solidfy the concept of being able to combine multiple Ruby methods in one line. In our initial solution, it was helpful to write out the longer loops so that we could solidfy the concepts. It was also helpful to see how it is important to keep track of when you switch between strings and integers.

=end