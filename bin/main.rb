# !/usr/bin/env ruby
require_relative '../lib/player.rb'
require_relative '../lib/game.rb'
require_relative '../lib/board.rb'


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

$board = Board.new
$player_1 = nil
$player_2 = nil

def board_display
  puts 'Here is the Board'
  i = 0
  while i < $board.key.length
    print "#{$board.key[i]} |" if i % 3 != 2
    # puts '----------'
    puts "#{$board.key[i]} " if i % 3 == 2
    # puts '----------'
    i += 1
  end

end


def request_user_name(player_num)
  puts "Enter your name player #{player_num}"
    name = gets.chomp
    name
end

def get_player_tag
  puts 'Enter your tag x | o'
  tag = gets.chomp
  tag
end


def create_player 
  player_1_name = request_user_name(1)
  player_1_tag = get_player_tag
  player_2_name = request_user_name(2)
  player_2_tag = get_player_tag
  $player_1 = Player.new(player_1_name, player_1_tag)
  $player_2 = Player.new(player_2_name, player_2_tag)
end
create_player 

def player_switch
  puts 'it is your turn to strike player1'
  switch1 = gets.chomp.to_i
  $board.update_board(switch1 - 1, $player_1)
  board_display
  puts "thanks for playing #{switch1}"
  puts 'it is your turn to strike player2'
  switch2 = gets.chomp.to_i
  $board.update_board(switch2 - 1, $player_2)
  board_display

  puts "thanks for playing #{switch2}"
end

player_switch

def move_validity
  puts 'player, make your move '
  move = gets.chomp
  board_display
  puts "Good! your  #{move} is valid?"
end

move_validity

def winning_move
  puts 'please,make your move'
  move = gets.chomp
  board_display
  puts "your #{move} as given you a win!"
  puts 'opppps! play again'
end

winning_move

def draw_move
  puts 'player1,make your move'
  move = gets.chomp
  board_display
  puts "box is full.you both had a draw tie! #{move}"
end

draw_move