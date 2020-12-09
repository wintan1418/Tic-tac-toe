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

      return unless check_outcome(@player1) == -1

      @board.draw
      input(@player2)

      return unless check_outcome(@player2) == -1
    end
  end

  def input(player)
    playing = true
    while playing
      puts "\n#{player.name}'s turn to strike"
      puts "\nEnter your strike position (eg. C2)"
      input_pos = gets.chomp
      legal = @board.legal_input?(input_pos)
      if legal
        pos = virgin_position(input_pos)
        unless @board.cell_empty?(pos)
          puts '***  not an empty cell. Please strike again. ***'
          next
        end
        @board.update(player.type, pos)
        @board.draw
      else
        puts '*** invalid move! strike again! ***'
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

  def check_outcome(player)
    case @board.status
    when 1
      puts "*** #{player.name} Won Congratulations! ***"
      1
    when 0
      puts '*** You both tuggled to a draw ***'
      0
    else
      -1
    end
  end
end
