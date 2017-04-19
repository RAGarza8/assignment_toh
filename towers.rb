def play(disc_num, columns)
  columns[0] = (1..3).to_a
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
        if invalid_move(columns, move_from, move_to) == true
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
  p columns
end

def move_disc(columns, move_from, move_to)
  columns[move_to] << columns[move_from].pop
end 

def invalid_move(columns, move_from, move_to)
  columns[move_from].empty? 
  if columns[move_to].any? && columns[move_from].last > columns[move_to].last
  end
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
