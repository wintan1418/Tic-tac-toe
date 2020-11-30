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
def board_display(board)
  puts 'Here is the Board'
  i = 0
  while i < board.length
    print "#{board[i]} |" if i % 3 != 2
    # puts '----------'
    puts "#{board[i]} " if i % 3 == 2
    # puts '----------'
    i += 1
  end
end

def create_player
  puts 'Please enter name of the first player'
  player1 = gets.chomp
  puts "Welcome #{player1}"
  puts 'Please enter name of the second player'
  player2 = gets.chomp
  puts "Welcome #{player2}"
end
create_player

def player_key
  puts 'player1 Choose your key'
  key1 = gets.chomp
  puts "Thanks for choosing #{key1}"
  puts 'player2 Choose your key'
  key2 = gets.chomp
  puts "Thanks for choosing #{key2}"
end
player_key

def player_switch
  puts 'it is your turn to strike player1'
  switch1 = gets.chomp
  board = Array.new(9)

  board_display(board)
  puts "thanks for playing #{switch1}"
  puts 'it is your turn to strike player2'
  switch2 = gets.chomp

  board = Array.new(9)
  board_display(board)

  puts "thanks for playing #{switch2}"
end

player_switch

def move_validity
  puts 'player, make your move '
  move = gets.chomp
  board = Array.new(9, 0)
  board_display(board)

  puts "Good! your  #{move} is valid?"
end
move_validity

def winning_move
  puts 'please,make your move'
  move = gets.chomp
  board = Array.new(9, 0)
  board_display(board)

  puts "your #{move} as given you a win!"
  puts 'opppps! play again'
end
winning_move

def draw_move
  puts 'player1,make your move'
  move = gets.chomp
  board = Array.new(9, 0)
  board_display(board)

  puts "box is full.you both had a draw tie! #{move}"
end

draw_move
