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
  columns[0] = (1..3).to_a.reverse
  columns[1] = []
  columns[2] = []
  render(columns)
    until check_win(columns) == true
      puts "Enter Move >"
      input = gets.chomp
      if input == "q"
        exit
      else
        input = input.split(",")  
        move_from = input[0].to_i - 1
        move_to = input[1].to_i - 1
        if invalid_move(columns, move_from) == true
          puts "Invalid move."
        end 
        move_disc(columns,move_from,move_to)
        render(columns)
      end
    end
    puts "You win!"
      exit
end

def render(columns)
  columns[0].reverse_each do |visual| 
    visual.times {print "o"}
    puts #find way to put padding here to solve the disappearance problem
  end

  puts "1".ljust(10) + "2".center(10) + "3".rjust(10)
end 



def move_disc(columns, move_from, move_to)
  columns[move_to] << columns[move_from].pop

  #Exception columns.move_to.first > move_from
  #Could do invalid move check here and raise exception
  #Read more about exceptions
  #Pop could raise a nil and that might be the exception
end 

def invalid_move(columns, move_from)
  columns[move_from].empty? 
end 

def check_win(columns)
   return columns[0].empty? && columns[1].empty?
end

def start
  hanoi = []
  puts "Welcome to Tower of Hanoi!"
  puts "Instructions:"
  puts "Enter where you'd like to move from and to"
  puts "in the format '1,3'. Enter 'q' to quit."
  puts "How many discs to use?"
  disc_num = gets.chomp.to_i
  play(disc_num, hanoi)
end

start()