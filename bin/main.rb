# # !/usr/bin/env ruby

# require_relative '../lib/player.rb'
# require_relative '../lib/game.rb'
# require_relative '../lib/board.rb'

# def display_title
# puts 'WELCOME TO TIC-TAC-TOE GAME'
# puts '    _______ _          _______             _______          
# (_______|_)        (_______)           (_______)         
#     _    _  ____       _ _____  ____       _  ___  _____ 
#     | |  | |/ ___)     | (____ |/ ___)     | |/ _ \| ___ |
#     | |  | ( (___      | / ___ ( (___      | | |_| | ____|
#     |_|  |_|\____)     |_\_____|\____)     |_|\___/|_____) '                                                         
# end
# display_title

# def board_display
#   puts 'Here is the Board'
#   i = 0
#   while i < $board.key.length
#     print "#{$board.key[i]} |" if i % 3 != 2
#     # puts '----------'
#     puts "#{$board.key[i]} " if i % 3 == 2
#     # puts '----------'
#     i += 1
#   end
#   end


# # def board_choice_display
# #   puts '      .-----.-----.-----.      .-----.-----.-----.'
# #   puts "      |  1  |  2  |  3  |      |  #{$b_ar[0]}  |  #{$b_ar[1]}  |  #{$b_ar[2]}  |"
# #   puts '      .-----+-----+-----.      .-----+-----+-----.'
# #   puts "      |  4  |  5  |  6  | ==>> |  #{$b_ar[3]}  |  #{$b_ar[4]}  |  #{$b_ar[5]}  |"
# #   puts '      .-----+-----+-----.      .-----+-----+-----.'
# #   puts "      |  7  |  8  |  9  |      |  #{$b_ar[6]}  |  #{$b_ar[7]}  |  #{$b_ar[8]}  |"
# #   puts '      .-----.-----.-----.      .-----.-----.-----.'
# # end


# # def create_player
# # puts 'Please enter name of the first player'
# # player1 = gets.chomp
# # puts "Welcome #{player1}"
# # puts 'Please enter name of the second player'
# # player2 = gets.chomp
# # puts "Welcome #{player2}"
# # end
# # create_player

# # def player_key
# # puts 'player1 Choose your key'
# # key1 = gets.chomp.downcase
# # if key1 != 'x' && key1 != 'o'
# #   puts 'Invalid key, choose x or o'
# #   player_key
# # end
# # puts "player 1 you are assigned #{key1}"
# # puts "player2 choose your key"
# # key2 = gets.chomp.downcase
# # if key2 != key1 && key2 == 'x' && key2 == 'o'
# #   puts "player 2 you are assigned #{key2}"
# # else
# #     puts "invalid choice"
# # end
# # end
# # player_key

# # def player_key
# #   puts 'player1 Choose your key'
# #   key1 = gets.chomp
# #   if key1 == 'x'
# #     puts "Thanks for choosing #{key1}"
# #     else
# #     puts "wrong choice" 
# #   end
# #    puts 'player2 Choose your key'
# #    key2 = gets.chomp
# #    if key2 == 'o'
# #     puts "Thanks for choosing #{key2}"
# #   else
# #     puts "wrong choice"
# #   end
# # end
# # player_key

# def request_user_name(player_num)
#   puts "Enter your name player #{player_num}"
#     name = gets.chomp
#     name
#   end
  
#   def get_player_tag
#   puts 'Enter your tag x | o'
#   tag = gets.chomp
#   tag
#   end
#   def create_player 
#   player_1_name = request_user_name(1)
#   player_1_tag = get_player_tag
#   player_2_name = request_user_name(2)
#   player_2_tag = get_player_tag
#   $player_1 = Player.new(player_1_name, player_1_tag)
#   $player_2 = Player.new(player_2_name, player_2_tag)
#   end
#   puts create_player


# # def player_switch
# # puts 'it is your turn to strike player1'
# # switch1 = gets.chomp

# # board = Array.new(9,0)
# # board_display
# # puts "thanks for playing #{switch1}"

# # puts 'it is your turn to strike player2'
# # switch2 = gets.chomp
# # board = Array.new(9,0)
# # board_display
# # puts "thanks for playing #{switch2}"
# # end

# # player_switch
# def player_switch
#   puts 'it is your turn to strike player1'
#   switch1 = gets.chomp.to_i
#   $board.update_board(switch1 - 1, $player_1)
#   board_display
#   puts "thanks for playing #{switch1}"
#   puts 'it is your turn to strike player2'
#   switch2 = gets.chomp.to_i
#   $board.update_board(switch2 - 1, $player_2)
#   board_display
#   puts "thanks for playing #{switch2}"
#   end
#   player_switch


# def move_validity
# puts 'player, make your move '
# move = gets.chomp
# board = Array.new(9,0)
# board_display(board)

# puts "Good! your  #{move} is valid?"
# end
# move_validity

# def winning_move
# puts 'please,make your move'
# move = gets.chomp
# board = Array.new(9, 0)
# board_display(board)

# puts "your #{move} as given you a win!"
# puts 'opppps! play again'
# end
# winning_move

# def draw_move
# puts 'player1,make your move'
# move = gets.chomp
# board = Array.new(9, 0)
# board_display(board)

# puts "box is full.you both had a draw tie! #{move}"
# end

# draw_move



