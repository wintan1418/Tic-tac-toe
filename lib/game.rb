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
      @board.draw
      input(@player1)

      break unless verify_result(@player1) == -1

      @board.draw
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
        @board.draw
        @board.status
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
    case @board.status
    when 1
      puts "*** #{player.name} made it a win for him/her self ***"
      1
    when 0
      puts '*** You both tuggled to a draw ***'
      0
    else
      -1
    end
  end
end
