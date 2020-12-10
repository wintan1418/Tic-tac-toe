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
  puts 'Press y to begin Tic-tac-toe'
  puts 'Press n to stop playing'
  input_opt = gets.chomp
  raise unless input_opt.include?('y') || input_opt.include?('n')

  if input_opt == 'y'
    loop do
      puts 'Enter player 1 name'
      player1_name = gets.chomp

      puts 'Enter player 2 name'
      player2_name = gets.chomp

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
