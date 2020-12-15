class Board
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3, '_') }
    
  end
  b = Board.new


  def update(type, pos)
    @board[pos[0]][pos[1]] = type
  end

  def valid_input?(pos)
    arr = pos.split('')
    x_axis = arr[1]
    y_axis = arr[0].upcase
    return true if (%w[A B C].include? y_axis) && (%w[1 2 3].include? x_axis)

    false
  end

  def empty_spot?(pos)
    return true if @board[pos[0]][pos[1]] == '_'

    false
  end

  
  def winner(player)
    b = @board

    diagonal = [[b[0][0], b[1][1], b[2][2]], [b[0][2], b[1][1], b[2][0]]]
    winning_sequence = b + b.transpose + diagonal
    win = []
    winning_sequence.each do |item|
      win.push(item.all?(player.type))
    end
    return 1 if win.any? == true
    return 0 unless @board.flatten.any?('_')

    -1
  end
  board = Board.new
  puts board.board

  def draw
    puts '    ___________'
    puts "C  |_#{@board[2][0]}_|_#{@board[2][1]}_|_#{@board[2][2]}_|"
    puts "B  |_#{@board[1][0]}_|_#{@board[1][1]}_|_#{@board[1][2]}_|"
    puts "A  |_#{@board[0][0]}_|_#{@board[0][1]}_|_#{@board[0][2]}_|"
    puts "     1   2   3\t\t"
    
  end

     output += "\nC  |_#{@board[2][0]}_|_#{@board[2][1]}_|_#{@board[2][2]}_|"
     output += "\nB  |_#{@board[1][0]}_|_#{@board[1][1]}_|_#{@board[1][2]}_|"
     output += "\nA  |_#{@board[0][0]}_|_#{@board[0][1]}_|_#{@board[0][2]}_|"
     output += "\n     1   2   3\t\t"
     output
  end


  
end
