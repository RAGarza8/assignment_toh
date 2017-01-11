# # Wrap everything in a class and focus on separating different functionality 
# into methods instead of creating one long run-on game method.
# # Create a game loop that finishes when the user either quits 
# (for instance, by entering quit on the input line) or wins.
# # Check for valid user inputs
# # Create a render method which prints out the current state of the game board 
# in between turns. START SIMPLE! The render method usually gives people the most frustration. Start by just printing the game state in numeric form before you try to get creative with your output.


# EXAMPLE: 

# Current Board:
# o
# oo
# ooo
# 1    2    3
# Enter move >


def play(disc_num, columns)
  columns[0] = (1..disc_num).to_a.reverse
  columns[1] = []
  columns[2] = []
  render_columns(columns)
    while(true)
      
      if(check_win(columns))
        puts "You win!"
        exit
      end

      puts "Enter Move >"
      input = gets.chomp

      if input == "q"
        exit
      end
      # Check input for legal input
      # a,b move a to b
      input = input.split(',')
      
      move_from = input[0].to_i - 1
      move_to = input[1].to_i - 1
      
      move_disc(columns,move_from,move_to)
      render_columns(columns)
    end
end

def render_columns(columns)
  puts "Column 1"
  puts columns[0]
  puts "Column 2"
  puts columns[1]
  puts "Column 3"
  puts columns[2]
end 

def move_disc(columns,move_from,move_to)
  # if invalid_move is false then do move
  # else print an error
  columns[move_to] << columns[move_from].pop
end 

def invalid_move
  # Suppose (a,b) is user input
  # Illegal if the block at top of column b is smaller than a
  # or top of a is smaller than top of b
  # Strictly illegal if column a is empty.
  # Legal if column b is empty.
  if from > to
    return "Invalid move."
  end 
  if from.empty?
    return "Invalid move"
  end
end 

def check_win(columns)
   return columns[0].empty? && columns[1].empty?
end

def main
  hanoi = []
  puts "Welcome to Tower of Hanoi!"
  puts "Instructions:"
  puts "Enter where you'd like to move from and to"
  puts "in the format '1,3'. Enter 'q' to quit."
  puts "How many discs to use?"
  disc_num = gets.chomp.to_i
  # Input check? makes sure disc_num is positive integer
  play(disc_num, hanoi)
end

main()