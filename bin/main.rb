#!/usr/bin/env ruby

puts 'welcome to Tic-tac-toe'

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
  puts ' Choose your key'
  key1 = gets.chomp
  puts "Thanks for choosing #{key1}"
  puts ' Choose your key'
  key2 = gets.chomp
  puts "Thanks for choosing #{key2}"
end
player_key

def player_switch
  puts 'it is your turn to strike player1'
  switch1 = gets.chomp
  puts "thanks for playing #{switch1}"
  puts 'it is your turn to strike player2'
  switch2 = gets.chomp
  puts "thanks for playing #{switch2}"
end
player_switch

def move_validity
  puts 'player, make your move '
  board = Array.new(9, 0)
  i = 0
  while i < board.length
    print "#{board[i]} |" if i % 3 != 2
    puts "#{board[i]} " if i % 3 == 2
    i += 1
  end
end
move_validity

def board_display
  puts 'Here is the Board'
  board = Array.new(9, 0)
  i = 0
  while i < board.length
    print "#{board[i]} |" if i % 3 != 2
    puts "#{board[i]} " if i % 3 == 2
    i += 1
  end
end

board_display
