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
  columns[1] = [].reverse
  columns[2] = [].reverse
    # if win? == true
    #   puts "You win!"
    #   exit
   # elsif move_disc == "q"
    #   puts "Then go"
    #   exit
    # else 
      puts "Enter Move >"
      render_columns(columns)
      move_disc = [from, to]
      move_disc = gets.chomp.to_i
    # end
  move_disc(from, to)
end

def render_columns(columns)
  puts columns[0]
  puts columns[1]
  puts columns[2]
end 

def move_disc
  # if invalid_move is false then do move
  # else print an error
  columns[to] << columns[from].pop
end 

def invalid_move
  # Suppose (a,b) is user input
  # Illegal if the block at top of column b is smaller than a
  # or top of a is smaller than top of b
  # Strictly illegal if column a is empty.
  # Legal if column b is empty.
  move_disc != []
  puts "Invalid"
  play
end 

# def win?(columns)
#   columns[0].empty? && columns[1].empty?
# end

hanoi = []
puts "Welcome to Tower of Hanoi!"
puts "Instructions:"
puts "Enter where you'd like to move from and to"
puts "in the format '1,3'. Enter 'q' to quit."
puts "How many discs to use?"
disc_num = gets.chomp.to_i
print disc_num
# Input check? makes sure disc_num is positive integer
play(disc_num, hanoi)