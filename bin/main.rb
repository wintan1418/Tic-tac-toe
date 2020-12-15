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

  # def draw(b)
  # puts '    ___________'
  # puts "C  |_#{b[2][0]}_|_#{b[2][1]}_|_#{b[2][2]}_|"
  # puts "B  |_#{b[1][0]}_|_#{b[1][1]}_|_#{b[1][2]}_|"
  # puts "A  |_#{b[0][0]}_|_#{b[0][1]}_|_#{b[0][2]}_|"
  # puts "     1   2   3\t\t"
  # end
  # board1 = game.board
  # draw(board1.board)
  # puts board1

      game.play


      puts "\nTHANK YOU FOR PLAYING"
      break
    end
  end
rescue StandardError
  retry
end

<<<<<<< HEAD

=======
>>>>>>> 14fc5e9be878ef799193c0d863c5a0e3c1c7c08e
