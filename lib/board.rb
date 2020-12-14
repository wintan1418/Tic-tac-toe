
# class Board 
#   attr_accessor :positions, :win_combination 

#   def initialize   
#   @positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]    
#   @win_combination = [  
#         [0, 1, 2], [3, 4, 5], [6, 7, 8],  
#         [0, 3, 6], [1, 4, 7], [2, 5, 8], 
#         [2, 4, 6],  [0, 4, 8]    ] 
#   end
   
#   def display_board  

# puts "|#{@positions[0]} | #{@positions[1]} | #{@positions[2]}|"

# puts "| #{@positions[3]} | #{@positions[4]} | #{@positions[5]}|"
    
# puts "| #{@positions[6]} | #{@positions[7]} | #{@positions[8]}|" 
#   end
   
#   def won?(player_input)  
#       @win_combination.each { |arr|
#           return true if arr.all? { |x|
#            player_input.include?(x) } }
#       false 
#       end

#     def valid_input?(input)  
#       @positions.include?(input) 
#       end

#     def update_board(current_player, inputs)  
#       @positions[inputs] = current_player.char 
#       end

#     def draw?  
#       @positions.none?(Integer) 
#         end
#       end
# # end


class Board
  attr_accessor :board

  def initialize
    @board = Array.new(3) { Array.new(3, '_') }
  end

  def update(type, pos)
    @board[pos[0]][pos[1]] = type
  end

  # Check if user input is valid
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
    return 1 if check_if_x_win || check_if_y_win || check_if_diag_win

    0 unless @board.flatten.any?('_')
  end

  def draw
    puts '    ___________'
    puts "C  |_#{@board[2][0]}_|_#{@board[2][1]}_|_#{@board[2][2]}_|"
    puts "B  |_#{@board[1][0]}_|_#{@board[1][1]}_|_#{@board[1][2]}_|"
    puts "A  |_#{@board[0][0]}_|_#{@board[0][1]}_|_#{@board[0][2]}_|"
    puts "     1   2   3\t\t"
  end

  private
  
  # def check_if_x_win
  #   if  @board[2][1] && @board[1][1] && @board[0][1]  != '_'
  #    x1 = @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
  #    x2 = @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]
  #    x3 = @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2]
  #    return x1 || x2 || x3
  #    end
  #     false
  # end
  

  def check_if_y_win
    # rows = @board.transpose
    @board.each do |y_axis|
      return y_axis.all?('X') || y_axis.all?('O')
    end
  end
# #   def check_if_x_win
# #     if  @board[0][1]   != '_'
# #      x1 = @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
# #      return x1
# #     elsif
# #         @board[1][1]   != '_'
# #      x2 = @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]
# #      return x2
# #     elsif
# #       @board[2][1]   != '_'
# #      x3 = @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2]
# #      return  x3
# #        end
# #        false
# #    end

# def check_if_y_win
#  if  @board[1][0] && @board[1][1] && @board[1][2]  != '_'
#   y1 = @board[0][0] == @board[1][0] && @board[1][0] == @board[2][0]
#   y2 = @board[0][1] == @board[1][1] && @board[1][1] == @board[2][1]
#   y3 = @board[0][2] == @board[1][2] && @board[1][2] == @board[2][2]
#   return y1 || y2 || y3
#   end
#     false
#   end


# def win(player)
#   b = @board
#   m = player['type']
#   row = @board
#   columns = @board.transpose
#   diagonal = [[b[0][0], b[1][1], b[2][2]], [b[0][2], b[1][1], b[2][0]]]

#   winning_sequence = row + columns + diagonal
#   win = []
#   winning_sequence.each do |item|
#     win.push(item.all?(m))
#   end
#   win.any?
# end

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