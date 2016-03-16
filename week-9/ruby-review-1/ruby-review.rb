# Cipher Challenge

# I worked on this challenge [with Ryan Dempsey]
# I spent [2] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   #split up the coded message into individual elements within the array - will make everything lowercase
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   #create an empty placeholder for the decoded string
#   decoded_sentence = []
#   #create a range from a to z that will be held in an array. Idea: create counter to shift by 4 letters. Replace coded item with cipher item.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |coded_item| # What is #each doing here? iterating through each item in the coded message
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?  it allows you to continue through the hash until the proper match is found (which would return 'true')
#     cipher.each_key do |cipher_item| # What is #each_key doing here?
#       if coded_item == cipher_item  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         decoded_sentence << cipher[cipher_item]
#         found_match = true
#         break  # Why is it breaking here? restarts the loop
#       elsif coded_item == "@" || coded_item == "#" || coded_item == "$" || coded_item == "%"|| coded_item == "^" || coded_item == "&"|| coded_item =="*" #What the heck is this doing? if coded item equals one of the symbols, then equals a space
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(coded_item) # Try this out in IRB. What does   " (0..9).to_a " do?
#         decoded_sentence << coded_item
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? if not accounted for, does not change and is included in decoded sentence
#       decoded_sentence << coded_item
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? Rejoins the coded message into a string
# end

# Your Refactored Solution

# Pseudocode
# -change the hash to an array which is a range of letters a-z
# -shift by -4? (use counter to iterate through shifted indices)
# -create an array that represents the shifted array

# i = 0
# original_alpha[i]
# i -= 4

def dr_evils_cipher(coded_message)

  input = coded_message.downcase.split("")

  decoded_sentence = []

  alphabet = ('a'..'z').to_a

  input.each do |coded_item|
    found_match = false
    alphabet.each_with_index do |letter,index|
      if coded_item == letter
        index -= 4 #adjust based on cipher index difference
        decoded_sentence << alphabet[index]
        found_match = true
        break
      elsif coded_item == "@" || coded_item == "#" || coded_item == "$" || coded_item == "%"|| coded_item == "^" || coded_item == "&"|| coded_item =="*"
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(coded_item)
        decoded_sentence << coded_item
        found_match = true
        break
      end
    end
    if not found_match
      decoded_sentence << coded_item
    end
  end
  decoded_sentence = decoded_sentence.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!

# What concepts did you review in this challenge?

# In this challenge, we reviewed the concepts of refactoring and creating more clear variable names. We also reviewed using the .each and .each_with_index method to iterate through arrays. We were able to practice moving through an array by using an index count.

# What is still confusing to you about Ruby?

# I am still having trouble finding ways to continue refactoring my solutions. I am also still trying to better understand how to call in different functions while making sure they are linnked to the main function.

# What are you going to study to get more prepared for Phase 1?

# I am going to continue reviewing the .each method and other enumerable methods. I would also like to practice refactoring and keeping my code more concise.