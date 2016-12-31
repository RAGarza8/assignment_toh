# # Wrap everything in a class and focus on separating different functionality 
# into methods instead of creating one long run-on game method.
# # Create a game loop that finishes when the user either quits 
# (for instance, by entering quit on the input line) or wins.
# # Check for valid user inputs
# # Create a render method which prints out the current state of the game board 
# in between turns. START SIMPLE! The render method usually gives people the most frustration. Start by just printing the game state in numeric form before you try to get creative with your output.


#####BEGIN PSEUDOCODE#######



# # > load 'towers.rb'
# # #=> true
# # > t = TowerOfHanoi.new(3)
# # #=> #<TowerOfHanoi:0x007f8ea03c93e0 @towers=3>
# # > t.play
# # # Welcome to Tower of Hanoi!
# # # Instructions:
# # # Enter where you'd like to move from and to
# # # in the format '1,3'. Enter 'q' to quit.
# # # Current Board:
# # # o
# # # oo
# # # ooo
# # # 1    2    3
# # # Enter move >