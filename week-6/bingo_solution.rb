# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #create new array that will hold randomly selected items
  #create a list which contains b, i, n, g, o
  #randomly select one letter in the list
  #create a list of numbers from 1 to 100
  #randomly select one number from the list

# Check the called column for the number called.
  #fill in the outline here
  #check if the number called is included in the array of numbers on the board
  #return true if number is included
  #return false if number is not included

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  #for number called that is true (included in board) replace number with an 'x'
  #if number called is false (not included in board) keep the number as is

# Display a column to the console
  #fill in the outline here
  #replace the item that contained the index of the called number with an "X"


# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution
=begin
class BingoBoard
  attr_reader :board

  def initialize(board)
    @bingo_board = board
  end

  def play
    guessed = []
    nums = 1..100
    nums_array = *nums
    guessed << nums_array.sample
    p guessed
    new_board = @bingo_board.flatten
    if new_board.include?(guessed[0])
      correct = new_board.index(guessed[0])
      new_board[correct] = "X"
      updated_board = new_board.each_slice(5).to_a
      p updated_board
    else
      p "Try again!"
    end
  end
end
=end

class BingoBoard

attr_reader :call_letter
attr_reader :call_num

def initialize(board)
  @board = board
end

def call
  @call_letter = ["B","I","N","G","O"].sample
  #@call_letter = "B"
  @call_num = rand(100)
  #@call_num = 75
  p @call_letter + @call_num.to_s
end

def check
  @board.each do |sub_array|
    if @call_letter == "B"
      if sub_array[0] == @call_num
        sub_array[0] = "X"
      end
    elsif @call_letter == "I"
      if sub_array[1] == @call_num
        sub_array[1] = "X"
      end
    elsif @call_letter == "N"
      if sub_array[2] == @call_num
        sub_array[2] = "X"
      end
    elsif @call_letter == "G"
      if sub_array[3] == @call_num
        sub_array[3] = "X"
      end
    else @call_letter[4] == "O"
      if sub_array[4] == @call_num
        sub_array[4] = "X"
      end
    end
  end
end

def display
  puts " B   I   N   G   O"
  puts "------------------"
  @board.each do |row|
    p row
  end
end

end
# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check
new_game.display


#Reflection