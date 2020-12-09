# def request_user_name(player_num)
# puts "Enter your name player #{player_num}"
# gets.chomp
# end

# def get_player_tag(tag_num)
# puts "Enter your tag x | o player #{tag_num} tag:"
# gets.chomp 
# end

# def create_player
# player_1_name = request_user_name(1)
# player_1 = get_player_tag(1) 
# player_2_name = request_user_name(2)
# player_2 = get_player_tag(2) 
# $player_1 = Player.new(player_1_name, player_1)
# $player_2 = Player.new(player_2_name, player_2)
# end
# create_player


# def player_switch
# player_switch = true
# puts 'it is your turn to strike player1'
# switch1 = gets.chomp.to_i
# $board.update_board(switch1 - 1, $player_1)
# board_display
# puts "thanks for playing #{switch1}"
# puts 'it is your turn to strike player2'
# switch2 = gets.chomp.to_i
# $board.update_board(switch2 - 1, $player_2)
# board_display

# # puts "thanks for playing #{switch2}"
# # while player_switch
# #   puts "it's your turn to strike first player"
# #   first_player = gets.chomp.downcase
# #   puts  "it's your turn to strike second player"
# #   second_player = gets.chomp.downcase 
# #   if first_player == "x" && second_player == "o"
# #     puts "switch to the next player"
# #     player_switch = false
# #   elsif first_player != "x" || second_player != "o"
# #     puts "invalid tag,play again"

# #     player_switch = false
# #   else
# #     puts "incorrect please exit!"

# #   end
# end


# player_switch

# def turn_count(board)
#   counter = 0
#   board.each do |spaces|
#      if spaces == "X" || spaces == "O"
#         counter += 1
#      end
#   end
#   counter
# end

# def move_validity
#   move_validity = true
  
# puts 'player1, make your move '
# move1 = gets.chomp
# Array.new(9)
# board_display
# puts "player2,make your move"
# move2 = gets.chomp
# Array.new(9)
# board_display
# i = 0
#   while i <= 9
#  if  move1 == move2 &&  move1 || move2 > ("9")
#   puts "invalid move" 
#   # puts "enter an integer 4between 1-9"
# else
#   puts "valid move"
#   i += 1
#   break
#   move_validity = false
 
# end
# end
# end

# move_validity

# def winning_move
# puts 'please,make your move'
# move = gets.chomp
# board_display
# puts "your #{move} as given you a win!"
# puts 'opppps! play again'
# end

# winning_move

# def draw_move
# puts 'player1,make your move'
# move = gets.chomp
# board_display
# puts "box is full.you both had a draw tie! #{move}"
# end
# draw_move


# def play
#   loop do
#   @board.draw
#   input(@player1)
#   # system('clear')
#   break unless check_outcome(@player1) == -1
  
#   @board.draw
#   input(@player2)
#   # system('clear')
#   break unless check_outcome(@player1) == -1
  
#   end
#   end
  

#   def input(player)
#   playing = false
#   until playing
#     puts "\n#{player.name}'s turn to strike"
#     puts "\nEnter your strike position (eg. C2)"
#     input_pos = gets.chomp
#     valid = @board.valid_input?(input_pos)
#     if valid
#       pos = virgin_position(input_pos)
#       unless @board.cell_empty?(pos)
#         puts '*** empty cell. Please strike again. ***'
#         next
#       end
#       @board.update_board(player.type, pos)
#       playing = true
#     else
#       puts '*** invalid move! strike again! ***'
#     end
#   end
#   end


#   def virgin_position(input_pos)
#     arr = input_pos.split('')
#     x_axis = arr[1].to_i - 1
#     y_axis = arr[0].upcase
#     # turn strings to integers
#     case y_axis
#     when 'A' then y_axis = 0
#     when 'B' then y_axis = 1
#     when 'C' then y_axis = 2
#     end
#     [y_axis, x_axis]
#   end
#   def check_outcome(player)
#     case @board.status
#     when 1
#       puts "*** #{player.name} Won Congratulations! ***"
#       1
#     when 0
#       puts "*** That's a tie ***"
#       0
#     else
#       -1
#     end
#   end

# board = Board.new
# player_1 = nil
# player_2 = nil

# def board_display
# puts 'Here is the Board'
# i = 0
# while i < $board.key.length
# print "#{$board.key[i]} |" if i % 3 != 2
# # puts '----------'
# puts "#{$board.key[i]} " if i % 3 == 2
# # puts '----------'
# i += 1
# end
# end
# private
# board_display

  # def start



# !/usr/bin/env ruby
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/board'

def display_title
puts 'WELCOME TO TIC-TAC-TOE GAME'
puts '    _______ _          _______             _______
(_______|_)        (_______)           (_______)
  _    _  ____       _ _____  ____       _  ___  _____
  | |  | |/ ___)     | (____ |/ ___)     | |/ _ \| ___ |
  | |  | ( (___      | / ___ ( (___      | | |_| | ____|
  |_|  |_|\____)     |_\_____|\____)     |_|\___/|_____) '
end

display_title

puts "\n\nPress Enter to start playing"
gets


  begin
  system('clear')
  puts 'Press y to begin Tic-tac-toe'
  puts 'Press n to stop playing'
  input_opt = gets.chomp
  raise unless input_opt.include?('y') || input_opt.include?('n')

  if input_opt == 'y'
    loop do
      system('clear')
      # for player1
      puts 'Enter player 1 name'
      player1_name = gets.chomp

      # for player2
      puts 'Enter player 2 name'
      player2_name = gets.chomp
      system('clear')
      game = Game.new(player1_name, player2_name)
      game.play

      puts "\nEnter y to play again or n to quit"
      input_opt = gets.chomp
      break if input_opt == 'y'
      next if input_opt == 'n'
    end
  end
rescue StandardError
  retry
end


