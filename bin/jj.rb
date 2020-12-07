# board.rb
# def initialize
#         @key = Array.new(9)
#         @moves = []
#     end
# The parameter was removed because your values is a default value. It is not going to change. It is when your values will change you will make use of a parameter
# main.rb
# $board = Board.new
# $player_1 = nil
# $player_2 = nil
# the first one is for instantiating
# $player_1 = nil
# $player_2 = nil
# this mean giving it a default value right
# def request_user_name(player_num)
#   puts "Enter your name player #{player_num}"
#     name = gets.chomp
#     name
# end
# def get_player_tag
#   puts 'Enter your tag x | o'
#   tag = gets.chomp
#   tag
# end
# def create_player 
#   player_1_name = request_user_name(1)
#   player_1_tag = get_player_tag
#   player_2_name = request_user_name(2)
#   player_2_tag = get_player_tag
#   $player_1 = Player.new(player_1_name, player_1_tag)
#   $player_2 = Player.new(player_2_name, player_2_tag)
# end
# create_player
# This methods were created because the method you created were given an error. the code that  were commented out to allow the new method to function is these
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
# # puts 'player 1 you are assigned o'
# # if key1 != 'x' 
# #   puts 'player 2 you are assigned x'
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
# there is a change that was imputed well
# def board_display
# puts 'Here is the Board'
# i = 0
# while i < $board.key.length
#   print "#{$board.key[i]} |" if i % 3 != 2
#   # puts '----------'
#   puts "#{$board.key[i]} " if i % 3 == 2
#   # puts '----------'
#   i += 1
# end
# end
# NOTE PLEASE SIR
# there are some function you have not created
# winner message
# to allow the user to be able to input 1-9(because presently at my side , just two numbers is inputted and that is all)
# valid move, (for example if a player1 input 5 , player2 must not be able to input 5 again)
# That is all I can remember



def move_validity(number)
i = 1
puts "make your move"
number = gets.chomp_to_i
while i <= number
puts "move valid,"
puts "next player"
i += 1
end
end
move_validity(1..9)