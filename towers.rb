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



#####BEGIN PSEUDOCODE#######

#Initialize Objects - Hash with columns as keys and plates as values?  
#User input moves values along hash?
#To win, should move all three plates into column three.


# @new_board[0]
# @new_board[0] = first tower
# @new_board[1] = second tower
# @new_board[2] = third tower

####Welcome players and tell them the instructions.

def instructions
  puts "Welcome to Tower of Hanoi!"
  # puts "Instructions:"
  # puts "Enter where you'd like to move from and to in the format [1,3]. Enter 'q' to quit."
  # puts @new_board
end

def opening_board
  board = [[2, 1, 0], [], []]
end

def user_input
  if move_input.downcase == "q"
    puts "Then go."
    exit
  end
end

#valid move should just test whether the user input is garbage.  A try again type option.
#another should test the logic (second method)

def valid_move
  print "Enter Move >:"
  move_input = gets.chomp.to_a
end



#Function for valid moves, function must translate user input of 1-3 as column moves,
#If user chooses, 1, should go into higher of 0, 3, and 6.  
#If 2, then higher of 1, 4, 7, and if 3, higher of 2, 5, 9.

def is_valid?
end
    


#Create a render method which prints out the current 
#state of the game board in between turns. I think use map method 
#so that it will return a new hash to display?

def render

end 


#Function for winning

def win
end
