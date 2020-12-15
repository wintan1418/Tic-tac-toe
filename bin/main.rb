# !/usr/bin/env ruby
require_relative '../lib/player'
# require_relative '../lib/game'
require_relative '../lib/board'

class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player1.type = 'X'
    @player2 = Player.new(player2_name)
    @player2.type = 'O'
    @board = Board.new
  end

  def play
    loop do
      puts @board.draw
      input(@player1)

      break unless verify_result(@player1) == -1

      puts @board.draw
      input(@player2)

      break unless verify_result(@player2) == -1
    end
  end

  def input(player)
    playing = false

    until playing
      puts "\n#{player.name}'s turn to strike"
      puts "\nEnter your strike position (A-C,1-3,FOR BOTH Y AND X AXIS)"
      input_pos = gets.chomp
      valid = @board.valid_input?(input_pos)
      if valid
        pos = virgin_position(input_pos)
        unless @board.empty_spot?(pos)
          puts '***  not an empty cell. Please strike again. ***'
          next
        end

        @board.update(player.type, pos)

        puts 'about to draw board'
        puts @board.draw
        verify_result(player)
        playing = true
      else
        puts '*** invalid move! please strike again! ***'
      end

    end
  end

  def virgin_position(input_pos)
    arr = input_pos.split('')
    x_axis = arr[1].to_i - 1
    y_axis = arr[0].upcase
    case y_axis
    when 'A' then y_axis = 0
    when 'B' then y_axis = 1
    when 'C' then y_axis = 2
    end
    [y_axis, x_axis]
  end

  def verify_result(player)
    case @board.winner(player)
    when 1
      puts "*** #{player.name} Won Congratulations! ***"
      1
    when 0
      puts '*** you played a draw***'
      0
    else
      -1
    end
    end
end

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
