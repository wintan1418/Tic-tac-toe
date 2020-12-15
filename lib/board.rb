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

  def status
    if check_if_x_win || check_if_y_win || check_if_diag_win
      puts 'win'
      1
    else
      puts 'no win'
    end
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

  private

  def check_if_y_win
    @board.each do |y_axis|
      return y_axis.all?('X') || y_axis.all?('O')
    end
  end

  def check_if_x_win
    @board.each do |x_axis|
      return x_axis.all?('X') || x_axis.all?('O')
    end
  end

  def check_if_diag_win
    if @board[1][1] != '_'
      diag1 = @board[0][0] == @board[1][1] && @board[1][1] == @board[2][2]
      diag2 = @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0]
      return diag1 || diag2
    end
    false
  end
end
