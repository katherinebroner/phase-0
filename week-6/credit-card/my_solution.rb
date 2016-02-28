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





# Refactored Solution








# Reflection