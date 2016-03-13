# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 2.5 hours on this challenge.

# Pseudocode
# Horizontal: iterate through each row in the array. If the array contains the unique value of only "x", then it is a BINGO.
# Vertical: use the transpose method to shift the columns into rows. Perform the same process as the horizontal method.
# Diagonal: create a counter to iterate through each row in the array and each item in the row. Iterate through the row and check if the proper index value contains an "x".  Continue checking and complete the iteration.  After looping, if the last element in the last row is "x", then it is  a BINGO.  For left to right, you reverse the order of the elements in the row.




# sample boards

horizontal = [[47, 44, 71, 8, 88],
              ['x', 'x', 'x', 'x', 'x'],
              [83, 85, 97, 89, 57],
              [25, 31, 96, 68, 51],
              [75, 70, 54, 80, 83]]

vertical = [[47, 44, 71, 'x', 88],
            [22, 69, 75, 'x', 73],
            [83, 85, 97, 'x', 57],
            [25, 31, 96, 'x', 51],
            [75, 70, 54, 'x', 83]]


right_to_left = [['x', 44, 71, 8, 88],
                 [22, 'x', 75, 65, 73],
                 [83, 85, 'x', 89, 57],
                 [25, 31, 96, 'x', 51],
                 [75, 70, 54, 80, 'x']]


left_to_right = [[47, 44, 71, 8, 'x'],
                  [22, 69, 75, 'x', 73],
                  [83, 85, 'x', 89, 57],
                  [25, 'x', 96, 68, 51],
                  ['x', 70, 54, 80, 83]]

# Initial Solution
class BingoScorer

  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def horizontal
    @board.each do |row|
      if row.uniq == ["x"] #ternary refactor
        puts "BINGO"
      end
    end
  end

  def vertical
    @board.transpose.each do |row|
      if row.uniq == ["x"] #ternary refactor
        puts "BINGO"
      end
    end
  end

  def diagonal
    array_count = 0
    while array_count < @board.length
      if @board[array_count][array_count] == "x"
        array_count += 1
      elsif @board.each do |rev|
        rev.reverse![array_count][array_count] == "x"
        array_count += 1
        end
      end
    end
    if @board[@board.length - 1][@board.length - 1] == "x"
      puts "BINGO"
    else
      puts "Try Again"
    end
  end
end

# Refactored Solution
class BingoScorer

  attr_accessor :board

  def initialize(board)
    @board = board
  end

  def horizontal
    @board.each do |row|
      puts "BINGO" if row.uniq == ["x"]
    end
  end

  def vertical
    @board.transpose.each do |row|
      puts "BINGO" if row.uniq == ["x"]
    end
  end

  def diagonal
    array_count = 0
    while array_count < @board.length
      if @board[array_count][array_count] == "x"
        array_count += 1
      elsif @board.each do |row|
        row.reverse![array_count][array_count] == "x"
        array_count += 1
        end
      end
    end
    puts "BINGO" if @board[@board.length - 1][@board.length - 1] == "x"
  end
end





# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
new_game = BingoScorer.new(vertical)
# new_game.vertical
# new_game.vertical
# new_game.diagonal

# Reflection
=begin

What concepts did you review or learn in this challenge? For this challenge, I reviewed the .each method to iterate through arrays.  I also practiced accessing elements within nested arrays.

What is still confusing to you about Ruby?  One area that still confuses me about Ruby is understanding when to use if, while, or each for looping/iterations.  At times I jump back and forth between them which can make things confusing.  I also find it difficult at times to refactor my code, and will continue researching new methods and more concise options.

What are you going to study to get more prepared for Phase 1?  For Phase 1, I am going to continue studying the each method so I feel more comfortable with iterations.  I would also like to take more time to review the Ruby docs for other Enumerable methods and ways to refactor my code.
=end